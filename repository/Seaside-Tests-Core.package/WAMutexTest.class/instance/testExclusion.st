testing
testExclusion
	| value semaphore1 semaphore2 x |
	x := OrderedCollection with: $a.
	semaphore1 := WAPlatform current semaphoreClass new.
	semaphore2 := WAPlatform current semaphoreClass new.
	process := [
		self assert: x asArray = #($a $g $o $p).	"main is waiting on semaphore1"
		x add: $b.
		mutex critical: [
			self assert: x asArray = #($a $g $o $p $b).	"we got the mutex before anyone else"
			x add: $c.
			semaphore1 signal.	"this allows the wait at $p to resume later"
			self assert: x asArray = #($a $g $o $p $b $c).	"signaling semaphore1 did not suspend us"
			x add: $d.
			semaphore1 wait.	"go to $q; note that this is the second wait but there is only one signal (without the one after $t)!"
				
			"without the signal after $t how can we get here?"
			x add: $e.
			value := 1.
		].
		x add: $f.
	] newProcess.
	self assert: x asArray = #($a).	"process has not run"
	x add: $g.
	process2 := [
		self assert: x asArray = #($a $g $o $p $b $c $d $q $r).	"main is waiting on semaphore2"
		x add: $h.
		semaphore2 signal.
		self assert: x asArray = #($a $g $o $p $b $c $d $q $r $h).		"signaling semaphore2 does not suspend us"
		x add: $i.
		mutex critical: [		"go to $s"
			x add: $j.
			semaphore2 signal.
			x add: $k.
			semaphore2 wait.
			x add: $l.
			value := 2.
			semaphore2 signal.
			x add: $m.
		].
		x add: $n.
	] newProcess.
	
	self assert: x asArray = #($a $g).	"process2 has not run"
	x add: $o.
	process resume.
	self assert: x asArray = #($a $g $o).	"resuming process does not cause it to run"
	x add: $p.
	semaphore1 wait.	"go to $b"
	self assert: x asArray = #($a $g $o $p $b $c $d).	"process is waiting on semaphore1"
	x add: $q.
	process2 resume.
	self assert: x asArray = #($a $g $o $p $b $c $d $q).	"resuming process2 does not cause it to run"
	x add: $r.
	semaphore2 wait.
	"process2 is waiting on mutex held by process1, which is waiting on semaphore1"
	self assert: x asArray = #($a $g $o $p $b $c $d $q $r $h $i).	
	x add: $s.
	self assert: mutex owner == process.
	self assert: value isNil.
	self assert: x asArray = #($a $g $o $p $b $c $d $q $r $h $i $s).	
	process resume.
	self assert: x asArray = #($a $g $o $p $b $c $d $q $r $h $i $s).		"resuming process does not cause it to run"
	x add: $t.

	"If we wait on semaphore2 right now, shouldn't this be a deadlock? 
		process2 is waiting on the mutex held by process1;
		process1 is waiting on semaphore1; and
		we will wait on semaphore2 that will be signaled at $j in process2.
	In this method, signal1 had two waits ($p and $d) and one signal (at $c)!"
	semaphore1 signal.		"This signal added by James to get the test to run on GemStone"
	"How does Squeak get by without the above signal?"

	semaphore2 wait.
	x add: $u.
	self assert: mutex owner == process2.
	self assert: value = 1.
	semaphore2 signal.
	x add: $v.
	semaphore2 wait.
	x add: $w.
	self assert: mutex owner isNil.
	self assert: value = 2.

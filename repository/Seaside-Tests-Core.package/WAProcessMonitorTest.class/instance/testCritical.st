testing
testCritical
	| in1 sem1 in2 sem2 |
	
	in1 := false. 
	sem1 := Semaphore new.
	
	in2 := false.
	sem2 := Semaphore new.

	[ monitor 
		critical: [ in1 := true. sem1 signal. sem2 wait ]
		ifError: [ :err | #fail ] ] fork.
	[ monitor 
		critical: [ in2 := true. sem1 signal. sem2 wait ]
		ifError: [ :err | #fail ] ] fork.

	sem1 wait.
	self deny: in1 = in2.
	sem2 signal.

	sem1 wait.
	self assert: in1 = in2.
	sem2 signal
testing
testExclusion
	| value semaphore1 semaphore2 |
	semaphore1 := WAPlatform current semaphoreClass new.
	semaphore2 := WAPlatform current semaphoreClass new.
	process := [
		mutex critical: [
			semaphore1 signal.
			semaphore1 wait.
			value := 1.
		].
	] newProcess.
	process2 := [
		semaphore2 signal.
		mutex critical: [	
			semaphore2 signal.
			semaphore2 wait.
			value := 2.
			semaphore2 signal.
		].
	] newProcess.
	
	process resume.
	semaphore1 wait.
	process2 resume.
	semaphore2 wait.
	self assert: mutex owner == process.
	self assert: value isNil.
	semaphore1 signal.
	semaphore2 wait.
	self assert: mutex owner == process2.
	self assert: value = 1.
	semaphore2 signal.
	semaphore2 wait.
	self assert: mutex owner isNil.
	self assert: value = 2.

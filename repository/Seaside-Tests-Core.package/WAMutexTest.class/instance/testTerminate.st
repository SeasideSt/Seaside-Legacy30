testing
testTerminate
	| value semaphore1 semaphore2 semaphore3 |
	semaphore1 := WAPlatform current semaphoreClass new.
	semaphore2 := WAPlatform current semaphoreClass new.
	semaphore3 := WAPlatform current semaphoreClass new.
	process := [value := [ mutex critical: [ semaphore1 signal. semaphore2 wait. 1 ]] ensure: [ semaphore3 signal ] ] newProcess.
	
	process resume.
	semaphore1 wait.
	self assert: mutex owner == process.
	mutex terminateOwner.
	semaphore3 wait.
	self assert: mutex owner isNil.
	self assert: value isNil.
	self assert: (WAPlatform current isProcessTerminated: process)
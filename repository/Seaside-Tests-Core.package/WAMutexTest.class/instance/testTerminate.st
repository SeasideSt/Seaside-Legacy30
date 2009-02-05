testing
testTerminate
	| value semaphore |
	semaphore := WAPlatform current semaphoreClass new.
	process := [value := mutex critical: [ semaphore signal. semaphore wait. 1 ] ] newProcess.
	
	process resume.
	semaphore wait.
	self assert: mutex owner == process.
	mutex terminateOwner.
	self assert: mutex owner isNil.
	self assert: value isNil.
	self assert: process isTerminated
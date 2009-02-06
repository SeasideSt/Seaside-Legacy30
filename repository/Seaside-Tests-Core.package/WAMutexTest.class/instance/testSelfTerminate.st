testing
testSelfTerminate
	| value semaphore |
	semaphore := WAPlatform current semaphoreClass new.
	process := [value := mutex critical: [
					semaphore signal.
					mutex terminateOwner.
					1 ] ] newProcess.
	
	process resume.
	semaphore wait.
	self assert: mutex owner isNil.
	self assert: value isNil.
	self assert: (WAPlatform current isProcessTerminated: process)

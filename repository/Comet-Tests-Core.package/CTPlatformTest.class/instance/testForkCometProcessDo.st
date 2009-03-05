testing
testForkCometProcessDo
	| semaphore seen |
	semaphore := WAPlatform current semaphoreClass new.
	
	seen := false.
	WAPlatform current forkCometProcessDo: [ seen := true. semaphore signal ].
	semaphore wait.
	self assert: [ seen ].

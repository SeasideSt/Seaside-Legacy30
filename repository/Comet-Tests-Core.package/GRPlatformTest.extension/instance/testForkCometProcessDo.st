*comet-tests-core
testForkCometProcessDo
	| semaphore seen |
	semaphore := self platform semaphoreClass new.
	seen := false.
	self platform forkCometProcessDo: [ seen := true. semaphore signal ].
	semaphore wait.
	self assert: seen
as yet unclassified
testWithNameWithPriorityFork
	| semaphore seen |
	semaphore := WAPlatform current semaphoreClass new.
	
	seen := false.
	WAPlatform current withName: 'CTPlatformTest' withPriority: 20 fork: [ seen := true. semaphore signal ].
	semaphore wait.
	self assert: [ seen ].

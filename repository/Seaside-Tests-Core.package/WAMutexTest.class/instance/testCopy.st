testing
testCopy
	| semaphore copy |
	semaphore := WAPlatform current semaphoreClass new.
	process := [mutex critical: [ semaphore signal. semaphore wait ] ] newProcess.
	
	process resume.
	semaphore wait.
	copy := mutex copy.
	
	self deny: copy == mutex.
	self assert: copy species = mutex species.
	self assert: copy owner isNil.
	self assert: (copy critical: [ 1 ]) = 1
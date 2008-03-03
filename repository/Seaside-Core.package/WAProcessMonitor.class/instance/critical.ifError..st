mutual exclusion
critical: aBlock ifError: anErrorBlock
	"Evaluate aBlock as a mutual exclusive block within a new processes and wait for the process to finish. Evaluate anErrorBlock in case of a problem. Answer the result of evaluating the blocks. Note, that the semaphore needs to be an instance-variable, otherwise continuations might screw up the debugger."

	| value |
	mutex critical: [
		semaphore := SeasidePlatformSupport semaphoreClass new.
		process := [
			[ value := aBlock on: Error do: anErrorBlock ]
				ensure: [ semaphore signal ] ] fork.
		semaphore wait ].
	process := nil.
	^ value
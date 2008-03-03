mutual exclusion
critical: aBlock ifError: anErrorBlock
	"Evaluate aBlock as a mutual exclusive block within a new processes and wait for the process to finish. Evaluate anErrorBlock in case of a problem. Answer the result of evaluating the blocks. Note, that the semaphore and value needs to be an instance-variable, otherwise continuations might screw up your session."

	mutex critical: [
		value := nil.
		semaphore := SeasidePlatformSupport semaphoreClass new.
		process := [
			[ value := aBlock on: Error do: anErrorBlock ]
				ensure: [ semaphore signal ] ] newProcess.
		process resume.
		semaphore wait.
		process := nil ].
	^ value
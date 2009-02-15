accessing
statusString
	^ self isRunning
		ifTrue: [ 'running' ]
		ifFalse: [ 'stopped' ]
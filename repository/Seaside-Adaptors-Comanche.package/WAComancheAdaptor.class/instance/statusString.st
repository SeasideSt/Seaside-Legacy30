accessing-readonly
statusString
	^ self isRunning
		ifTrue: [ service seasideString ]
		ifFalse: [ super statusString ]
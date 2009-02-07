accessing
statusString
	^ self isRunning
		ifTrue: [ service asString ]
		ifFalse: [ super statusString ]
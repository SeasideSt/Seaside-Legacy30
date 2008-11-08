actions
handleException: anException
	(anException isKindOf: Error)
		ifTrue: [ ^ self handleError: anException ].
	(anException isKindOf: Warning)
		ifTrue: [ ^ self handleWarning: anException ].
	(anException isKindOf: SeasidePlatformSupport haltExceptionClass)
		ifTrue: [ ^ self handleHalt: anException ].
	
	^ self handleDefault: anException
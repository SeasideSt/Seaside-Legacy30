actions
handleException: anException
	(anException isKindOf: Error) ifTrue: [ ^ self handleError: anException ].
	(anException isKindOf: Warning) ifTrue: [ ^ self handleWarning: anException ].
	
	^ self handleDefault: anException
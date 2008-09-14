processing
responseForContext: aRequestContext 
	^ self isClosed 
		ifFalse: [ super responseForContext: aRequestContext ]
		ifTrue: [ WAResponseFactory pageExpiredForContext: aRequestContext ]
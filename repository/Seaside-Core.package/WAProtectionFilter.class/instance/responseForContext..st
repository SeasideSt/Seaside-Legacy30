processing
responseForContext: aRequestContext 
	^ (self verifyRequest: aRequestContext request) 
		ifTrue: [ super responseForContext: aRequestContext ]
		ifFalse: [ WAResponse forbidden: aRequestContext request url ]
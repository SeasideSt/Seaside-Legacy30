processing
responseForContext: aRequestContext 
	^ (self verifyRequest: aRequestContext request) 
		ifTrue: [ super responseForContext: aRequestContext ]
		ifFalse: [ aRequestContext entryPoint responseFactory forbiddenForContext: aRequestContext ]
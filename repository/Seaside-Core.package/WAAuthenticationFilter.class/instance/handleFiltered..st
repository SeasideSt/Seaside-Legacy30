processing
handleFiltered: aRequestContext 
	(self verifyRequest: aRequestContext request) 
		ifTrue: [ super handleFiltered: aRequestContext ]
		ifFalse: [ aRequestContext responseFactory basicAuthWithRealm: self realm; return ]
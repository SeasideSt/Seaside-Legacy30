processing
handleFiltered: aRequestContext 
	^ (self verifyRequest: aRequestContext request) 
		ifTrue: [ super handleFiltered: aRequestContext ]
		ifFalse: [ WAResponse basicAuthWithRealm: self realm ]
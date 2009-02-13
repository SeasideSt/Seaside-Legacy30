processing
handleFiltered: aRequestContext
	(self verifyRequest: aRequestContext request)
		ifTrue: [ super handleFiltered: aRequestContext ]
		ifFalse: [ aRequestContext response basicAuthenticationRealm: self realm; respond ]
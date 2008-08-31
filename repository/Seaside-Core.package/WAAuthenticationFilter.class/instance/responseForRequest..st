processing
responseForRequest: aRequest
	^ (self verifyRequest: aRequest)
		ifTrue: [ super responseForRequest: aRequest ]
		ifFalse: [ WAResponse basicAuthWithRealm: self realm ]
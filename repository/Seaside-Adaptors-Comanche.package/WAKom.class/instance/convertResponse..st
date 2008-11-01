converting
convertResponse: aResponse 
	| komResponse |
	aResponse isNil
		ifTrue:  [ ^ self requestHandlingAborted ].
	komResponse := HttpResponse new.
	self 
		convertCookiesFrom: aResponse
		to: komResponse.
		
	aResponse headers associationsDo:  [ :associaction | 
		komResponse 
			fieldAt: associaction key
			put: associaction value ].
	komResponse status: (HttpResponse statusSymbolFor: aResponse status).
	komResponse contents: (self contentsOfResponse: aResponse).
	komResponse contentType: aResponse contentType seasideString.
	^ komResponse
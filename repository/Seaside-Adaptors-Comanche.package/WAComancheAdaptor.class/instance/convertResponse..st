converting
convertResponse: aResponse 
	| komResponse |
	aResponse isNil
		ifTrue:  [ ^ self requestHandlingAborted ].
	komResponse := HttpResponse new.
		
	aResponse headers associationsDo:  [ :associaction | 
		komResponse 
			fieldAt: associaction key
			put: associaction value ].
	self convertCookiesFrom: aResponse to: komResponse.
	
	komResponse status: (HttpResponse statusSymbolFor: aResponse status).
	komResponse contents: (self contentsOfResponse: aResponse).
	komResponse contentType: aResponse contentType seasideString.
	^ komResponse
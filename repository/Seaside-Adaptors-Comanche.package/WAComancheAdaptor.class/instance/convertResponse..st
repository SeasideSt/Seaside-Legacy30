converting
convertResponse: aResponse 
	| komResponse |
	aResponse isNil
		ifTrue:  [ ^ self requestHandlingAborted ].
	komResponse := HttpResponse new.
		
	aResponse headers keysAndValuesDo: [ :key :value |
		key = 'Content-Type'
			ifTrue: [ komResponse contentType: value seasideString ]
			ifFalse: [ komResponse fieldAt: key put: value seasideString ] ].
	self convertCookiesFrom: aResponse to: komResponse.
	
	komResponse status: (HttpResponse statusSymbolFor: aResponse status).
	komResponse contents: (self contentsOfResponse: aResponse).
	
	^ komResponse
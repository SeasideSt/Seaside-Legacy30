converting
responseFrom: aRequestContext
	| response |
	response := HttpResponse new.
	aRequestContext response headers keysAndValuesDo: [ :key :value |
		key = 'Content-Type'
			ifTrue: [ response contentType: value seasideString ]
			ifFalse: [ response fieldAt: key put: value seasideString ] ].
	self convertCookiesFrom: aRequestContext response to: response.
	response status: (HttpResponse statusSymbolFor: aRequestContext response status).
	response contents: aRequestContext response stream contents readStream.
	^ response
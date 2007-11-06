processing
handleRequest: aRequest
	aRequest isPrefetch
		ifTrue: [ ^ WAResponse forbidden: aRequest url ].
	^ (self handlerForRequest: aRequest)
		handleRequest: aRequest
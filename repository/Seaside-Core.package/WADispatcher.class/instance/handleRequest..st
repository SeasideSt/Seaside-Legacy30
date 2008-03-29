processing
handleRequest: aRequest
	aRequest isPrefetch
		ifTrue: [ ^ WAResponse forbidden: aRequest url ].
	^self pushSelfDuring: [
		(self handlerForRequest: aRequest)
			handleRequest: aRequest ]
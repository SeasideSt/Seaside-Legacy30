processing
handleRequest: aRequest
	^self pushSelfDuring: [
		(self handlerForRequest: aRequest)
			handleRequest: aRequest ]
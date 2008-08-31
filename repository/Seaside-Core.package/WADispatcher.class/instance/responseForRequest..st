processing
responseForRequest: aRequest
	^ (self handlerForRequest: aRequest)
		handleRequest: aRequest
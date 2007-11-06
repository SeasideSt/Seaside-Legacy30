processing
handleRequest: aRequest
	^ self
		responseAt: (aRequest url findTokens: $/)
		ifAbsent: [ self notFound: aRequest url ]
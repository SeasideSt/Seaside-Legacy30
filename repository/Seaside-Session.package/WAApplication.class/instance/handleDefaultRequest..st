request handling
handleDefaultRequest: aRequestContext
	^ self sessionClass new handleRequest: aRequestContext
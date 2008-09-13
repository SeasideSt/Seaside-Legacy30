processing
responseForContext: aRequestContext 
	^ (self handlerForRequest: aRequestContext request) handleRequest: aRequestContext
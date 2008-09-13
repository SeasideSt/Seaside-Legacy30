request handling
handleDefaultRequest: aRequest
	^ (self sessionClass new setParent: self) handleRequest: aRequest
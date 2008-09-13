request handling
handleDefaultRequest: aRequestContext
	^ (self sessionClass new setParent: self) handleRequest: aRequestContext
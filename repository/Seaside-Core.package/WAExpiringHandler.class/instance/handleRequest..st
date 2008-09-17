processing
handleRequest: aRequestContext 
	| response |
	self policy evaluateContext: aRequestContext.
	self isActive ifFalse: [ ^ self policy expiredResponseForContext: aRequestContext ].
	response := super handleRequest: aRequestContext.
	self policy evaluateResponse: response.
	^ response
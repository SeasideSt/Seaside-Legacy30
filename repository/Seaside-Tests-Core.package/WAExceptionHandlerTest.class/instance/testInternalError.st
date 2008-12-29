testing
testInternalError
	| response |
	response := self handlerClass internalError: WATestError new context: self requestContext.
	self assert: (response isKindOf: WAResponse)
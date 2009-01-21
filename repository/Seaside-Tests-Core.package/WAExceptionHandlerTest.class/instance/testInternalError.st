testing
testInternalError
	| context |
	context := self createRequestContext.
	self handlerClass internalError: WATestError new context: context.
	self assert: (context response isKindOf: WAResponse).
	self assert: context response status = 500.
	
	context := self createRequestContext.
	self handlerClass
		internalError: (WATestError new messageText: 'test'; yourself)
		context: context.
	self assert: (context response isKindOf: WAResponse).
	self assert: context response status = 500
testing
testError
	| context |
	context := self createRequestContext.
	self handlerClass
		handleExceptionsDuring: [ WAError signal ]
		context: context.
		
	self assert: context response status = 500
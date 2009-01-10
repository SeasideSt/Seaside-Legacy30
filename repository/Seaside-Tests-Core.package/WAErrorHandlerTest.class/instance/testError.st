testing
testError
	| response |
	response := self handlerClass
		handleExceptionsDuring: [ WAError signal ]
		context: self requestContext.
		
	self assert: response status = 500
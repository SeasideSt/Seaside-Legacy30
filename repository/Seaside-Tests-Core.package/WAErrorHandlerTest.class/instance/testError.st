testing
testError
	| response |
	response := self handlerClass
		handleExceptionsDuring: [Error raiseSignal]
		context: self requestContext.
		
	self assert: response status = 500
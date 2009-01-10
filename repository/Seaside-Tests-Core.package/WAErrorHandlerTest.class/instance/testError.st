testing
testError
	| response |
	response := self handlerClass
		handleExceptionsDuring: [WAError raiseSignal]
		context: self requestContext.
		
	self assert: response status = 500
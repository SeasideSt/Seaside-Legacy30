testing
testWarning
	| response |
	response := self handlerClass
		handleExceptionsDuring: [Warning raiseSignal]
		context: self requestContext.
		
	self assert: response status = 500
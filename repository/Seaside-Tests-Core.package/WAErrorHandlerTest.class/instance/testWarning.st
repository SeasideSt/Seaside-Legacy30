testing
testWarning
	| response |
	response := self handlerClass
		handleExceptionsDuring: [ Warning signal ]
		context: self requestContext.
		
	self assert: response status = 500
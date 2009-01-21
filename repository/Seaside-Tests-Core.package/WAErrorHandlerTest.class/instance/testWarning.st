testing
testWarning
	| context |
	context := self createRequestContext.
	self handlerClass
		handleExceptionsDuring: [ Warning signal ]
		context: context.
		
	self assert: context response status = 500
testing
testRequestContextRequest
	| context |
	context := self requestContext.
	self handlerClass
		handleExceptionsDuring: [
			self assert: context == WARequestContextRequest signal.
			^ self "success" ]
		context: context.
		
	self assert: false
	
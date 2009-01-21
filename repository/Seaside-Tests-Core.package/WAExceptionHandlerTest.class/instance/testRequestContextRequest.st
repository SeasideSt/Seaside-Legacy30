testing
testRequestContextRequest
	| context |
	context := self createRequestContext.
	self handlerClass
		handleExceptionsDuring: [
			self assert: context == WARequestContextRequest signal.
			^ self "success" ]
		context: context.
		
	self assert: false
	
testing
testRequestContextRequest
	| context |
	context := self requestContext.
	self handlerClass
		handleExceptionsDuring: [
			self assert: context == WARequestContextRequest raiseSignal.
			^ self "success"]
		context: context.
		
	self assert: false
	
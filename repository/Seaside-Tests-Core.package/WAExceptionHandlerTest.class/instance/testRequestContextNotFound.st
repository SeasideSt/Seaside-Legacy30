testing
testRequestContextNotFound
	| context |
	context := self requestContext.
	self handlerClass
		handleExceptionsDuring: [
			self assert: context == WARequestContextNotFound raiseSignal.
			^ self "success"]
		context: context.
		
	self assert: false
	
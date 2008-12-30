testing
testUnhandledException
	[self handlerClass
		handleExceptionsDuring: [self unhandledExceptionClass raiseSignal]
		context: self requestContext]
			on: self unhandledExceptionClass
			do: [:exception | "success" ^ self].
	
	self assert: false
	
testing
testUnhandledError
	[self handlerClass
		handleExceptionsDuring: [WATestError raiseSignal]
		context: self requestContext]
			on: WATestError
			do: ["success" ^ self].
	
	self assert: false
	
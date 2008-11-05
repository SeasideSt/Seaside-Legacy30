processing
responseForContext: aRequestContext
	^ (self exceptionHandlerForContext: aRequestContext)
		handleExceptionsDuring: [ super responseForContext: aRequestContext ]
		context: aRequestContext
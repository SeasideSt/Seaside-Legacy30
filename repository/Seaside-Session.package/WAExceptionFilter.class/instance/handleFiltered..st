processing
handleFiltered: aRequestContext
	^ (self exceptionHandlerForContext: aRequestContext)
		handleExceptionsDuring: [ super handleFiltered: aRequestContext ]
		context: aRequestContext
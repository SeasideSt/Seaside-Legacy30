deprecated
withErrorHandler: aBlock
	self seasideDeprecatedApi: 'WASession>>withErrorHandler:'
		details: 'ExceptionHandlers should be allowed to set up their own exception handling code. See WAExceptionHandler class>>handleExceptionsDuring:context:'.
	"The current request context may not be available depending on where this message
	is called from but its the best we can do."
	^ (self exceptionHandlerForContext: self requestContext) handleExceptionsDuring: aBlock context: self requestContext
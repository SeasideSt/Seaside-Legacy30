deprecated
withErrorHandler: aBlock
	self deprecatedApi: 'ExceptionHandlers should be allowed to set up their own exception handling code. See WAExceptionHandler class>>handleExceptionsDuring:'.
	^ self exceptionHandler handleExceptionsDuring: aBlock
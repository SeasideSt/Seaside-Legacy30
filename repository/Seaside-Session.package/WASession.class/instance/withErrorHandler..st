deprecated
withErrorHandler: aBlock
	self seasideDeprecatedApi: 'WASession>>withErrorHandler:'
		details: 'ExceptionHandlers should be allowed to set up their own exception handling code. See WAExceptionHandler class>>handleExceptionsDuring:'.
	^ self exceptionHandler handleExceptionsDuring: aBlock
deprecated
handleError: anError
	self deprecatedApi: 'ExceptionHandlers should be allowed to set up their own exception handling code. See WAExceptionHandler class>>handleExceptionsDuring:'.
	^ self new handleError: anError
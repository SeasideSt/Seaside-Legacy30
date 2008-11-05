private
exceptionHandlerForContext: aRequestContext
	^ aRequestContext application preferenceAt: #exceptionHandler
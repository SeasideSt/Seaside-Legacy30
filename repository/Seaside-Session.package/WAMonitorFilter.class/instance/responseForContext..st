processing
responseForContext: aRequestContext
	"The monitor should never get any errors, because the exception handler in the main block should catch any errors that come up. But if it does not, then we fall back to the lowest common denominator here."
	
	^ (self shouldTerminate: aRequestContext)
		ifTrue: [ self terminate: aRequestContext ]
		ifFalse: [ 
			monitor
				critical: [ super responseForContext: aRequestContext ]
				ifError: [ :error | 
					WAExceptionHandler
						internalError: error 
						context: aRequestContext ] ]
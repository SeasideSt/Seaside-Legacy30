request handling
handleRequest: aRequestContext
	((aRequestContext request fields includesKey: 'terminate') and: [ self sessionAllowTermination ]) ifTrue: [
		monitor terminate.
		^ WAResponse new nextPutAll: 'Process terminated' ].
	^ aRequestContext push: self while: [
		monitor 
			critical:  [ 
				self withEscapeHandler: [
					(self exceptionHandlerForContext: aRequestContext)
						handleExceptionsDuring: [
							self filter responseForContext: aRequestContext ]
						context: aRequestContext ] ]
			ifError:  [ :error |
				"This should never happen because the exception handler in the main
				block should catch any errors that come up. But if it does not, then we
				fall back to the lowest common denominator here."
				WAExceptionHandler internalError: error context: aRequestContext ] ]
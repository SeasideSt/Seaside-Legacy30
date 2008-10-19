request handling
handleRequest: aRequestContext
	((aRequestContext request fields includesKey: 'terminate') and: [ self sessionAllowTermination ]) ifTrue: [
		monitor terminate.
		^ WAResponse new nextPutAll: 'Process terminated' ].
	^ aRequestContext push: self while: [
	monitor 
		critical:  [ 
			WACurrentRequestContext 
				use: aRequestContext
				during: [ 
					self withEscapeHandler: [
						self exceptionHandler
							handleExceptionsDuring: [
								self filter responseForContext: aRequestContext ]
							context: aRequestContext ] ] ]
		ifError:  [ :error |
			WACurrentRequestContext 
				use: aRequestContext
				during: [ self exceptionHandler internalError: error context: aRequestContext ] ] ]
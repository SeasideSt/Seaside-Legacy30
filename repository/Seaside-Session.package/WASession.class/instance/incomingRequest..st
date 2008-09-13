request handling
incomingRequest: aRequestContext 
	((aRequestContext request fields includesKey: 'terminate') and: [ self sessionAllowTermination ]) ifTrue: [
		monitor terminate.
		^ WAResponse new nextPutAll: 'Process terminated' ].
	^ monitor 
		critical:  [
			WACurrentRequestContext 
				use: aRequestContext
				during: [ 
					self withEscapeHandler: [
						self withErrorHandler: [
							self performRequest: aRequestContext request ] ] ] ]
		ifError:  [ :error | 
			WACurrentRequestContext 
				use: aRequestContext
				during: [ self errorHandler internalError: error ] ]
request handling
incomingRequest: aRequest 
	| context |
	((aRequest fields includesKey: 'terminate') and: [ self sessionAllowTermination ]) ifTrue: [
		monitor terminate.
		^ WAResponse new nextPutAll: 'Process terminated' ].
	context := self requestContext.
	^ monitor 
		critical:  [
			WACurrentRequestContext 
				use: context
				during: [ 
					self withEscapeHandler: [
						self withErrorHandler: [
							self performRequest: aRequest ] ] ] ]
		ifError:  [ :error | 
			WACurrentRequestContext 
				use: context
				during: [ self errorHandler internalError: error ] ]
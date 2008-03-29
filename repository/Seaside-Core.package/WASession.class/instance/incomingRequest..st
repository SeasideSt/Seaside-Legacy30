request handling
incomingRequest: aRequest
	| context |
	((aRequest fields includesKey: 'terminate')
		and: [self application deploymentMode not])
			ifTrue: [
				monitor terminate.
				^ WAResponse new nextPutAll: 'Process terminated' ].
			
	context := WACurrentContext value.
			
	^ monitor
		critical: [
			WACurrentContext
				use: context
				during:  [ self responseForRequest: aRequest ] ]
		ifError: [ :error |
			WACurrentContext
				use: context
				during:  [ self errorHandler internalError: error ] ]
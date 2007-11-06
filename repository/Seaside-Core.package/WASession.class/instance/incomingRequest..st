request handling
incomingRequest: aRequest
	((aRequest fields includesKey: 'terminate')
		and: [self application deploymentMode not])
			ifTrue: [
				monitor terminate.
				^ WAResponse new nextPutAll: 'Process terminated' ].
	^ monitor
		critical: [ self responseForRequest: aRequest ]
		ifError: [ :error | self errorHandler internalError: error ]
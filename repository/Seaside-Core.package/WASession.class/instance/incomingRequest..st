request handling
incomingRequest: aRequest 
	| context |
	((aRequest fields includesKey: 'terminate') and: [ self application deploymentMode not ]) ifTrue: 
		[ monitor terminate.
		^ WAResponse new nextPutAll: 'Process terminated' ].
	context := WACurrentRequestContext value.
	^ monitor 
		critical: 
			[ WACurrentRequestContext 
				use: context
				during: [ self responseForRequest: aRequest ] ]
		ifError: 
			[ :error | 
			WACurrentRequestContext 
				use: context
				during: [ self errorHandler internalError: error ] ]
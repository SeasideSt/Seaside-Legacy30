processing
incomingRequest: aRequest
	aRequest responseStream
		ifNil: [ self error: 'Streaming-server required.' ].
	^ (aRequest fields includesKey: CTComet headerField)
		ifTrue: [ self cometRequest: aRequest ]
		ifFalse: [ super incomingRequest: aRequest ]
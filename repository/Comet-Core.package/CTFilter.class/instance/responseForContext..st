processing
responseForContext: aRequestContext
	aRequestContext responseStream
		ifNil: [ self error: 'Streaming-server required.' ].
	^ (aRequestContext request includesKey: CTComet headerField)
		ifTrue: [ self cometForContext: aRequestContext ]
		ifFalse: [ super responseForContext: aRequestContext ]
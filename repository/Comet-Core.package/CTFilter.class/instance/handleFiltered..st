processing
handleFiltered: aRequestContext
	aRequestContext stream
		ifNil: [ self error: 'Streaming-server required.' ].
	(aRequestContext request includesKey: CTComet headerField)
		ifTrue: [ self cometForContext: aRequestContext ]
		ifFalse: [ super handleFiltered: aRequestContext ]
processing
handleFiltered: aRequestContext
	(aRequestContext response isKindOf: WAStreamedResponse)
		ifFalse: [ self error: 'Streaming-server required.' ].
	(aRequestContext request includesKey: CTComet headerField)
		ifTrue: [ self cometForContext: aRequestContext ]
		ifFalse: [ super handleFiltered: aRequestContext ]
processing
cometRequest: aRequest
	^ (handlers
		at: (aRequest fields
			at: CTComet headerField
			ifAbsent: [ ^ nil ])
		ifAbsent: [ ^ nil ])
			connect: aRequest
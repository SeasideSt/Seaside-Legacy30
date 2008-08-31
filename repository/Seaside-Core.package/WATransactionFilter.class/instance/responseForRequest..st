processing
responseForRequest: aRequest
	^ self isClosed
		ifFalse: [ super responseForRequest: aRequest ]
		ifTrue: [ self requestContext session pageExpired ]
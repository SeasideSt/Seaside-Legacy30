forwarding
processChildCallbacks: aStream
	(self verifyRequest: self requestContext request)
		ifTrue: [ super processChildCallbacks: aStream ]
		ifFalse: [ self respondNotVerified ]
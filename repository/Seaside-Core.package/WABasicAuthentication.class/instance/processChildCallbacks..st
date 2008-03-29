processing
processChildCallbacks: aStream
	(self verifyRequest: self session currentRequest)
		ifTrue: [ super processChildCallbacks: aStream ]
		ifFalse: [ self respondWithChallenge ]
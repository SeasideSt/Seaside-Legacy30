processing
processChildCallbacks: aStream
	(self verifyRequest: self context request)
		ifTrue: [ super processChildCallbacks: aStream ]
		ifFalse: [ self respondWithChallenge ]
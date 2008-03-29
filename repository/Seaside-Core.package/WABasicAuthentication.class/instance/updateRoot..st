processing
updateRoot: aStream
	(self verifyRequest: self context request)
		ifTrue: [ super updateRoot: aStream ]
		ifFalse: [ self respondWithChallenge ]
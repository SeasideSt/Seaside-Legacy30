processing
updateRoot: aStream
	(self verifyRequest: self session currentRequest)
		ifTrue: [ super updateRoot: aStream ]
		ifFalse: [ self respondWithChallenge ]
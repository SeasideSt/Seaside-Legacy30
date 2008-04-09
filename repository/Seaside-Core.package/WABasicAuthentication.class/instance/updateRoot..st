processing
updateRoot: aStream
	(self verifyRequest: self requestContext request)
		ifTrue: [ super updateRoot: aStream ]
		ifFalse: [ self respondWithChallenge ]
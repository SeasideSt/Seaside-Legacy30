printing
printOn: aStream
	aStream javascript: self collection; nextPutAll: '.join('; javascript: self joiner; nextPut: $)
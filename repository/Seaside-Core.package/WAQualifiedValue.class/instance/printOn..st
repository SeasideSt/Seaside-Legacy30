printing
printOn: aStream
	super printOn: aStream.

	aStream 
		nextPutAll: ' (value: ', self value greaseString;
		nextPutAll: ' quality: ', self quality greaseString;
		nextPut: $)
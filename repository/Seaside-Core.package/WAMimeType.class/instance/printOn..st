printing
printOn: aStream 
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self seasideString;
		nextPut: $)
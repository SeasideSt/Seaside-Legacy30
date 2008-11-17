printing
printContentOn: aStream
	super printContentOn: aStream.
	aStream nextPut: $.; nextPutAll: self method; arguments: self arguments
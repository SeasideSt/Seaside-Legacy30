printing
printOn: aStream
	super printOn: aStream.
	aStream space; nextPutAll: self method.
	aStream space; nextPutAll: self url seasideString
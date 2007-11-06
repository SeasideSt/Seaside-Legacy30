printing
printOn: aStream
	super printOn: aStream.
	aStream space; nextPutAll: self status displayString
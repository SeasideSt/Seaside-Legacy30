printing
printContentOn: aStream
	super printContentOn: aStream.
	aStream nextPut: $.; nextPutAll: self name.
	JSStream encodeArguments: self arguments on: aStream
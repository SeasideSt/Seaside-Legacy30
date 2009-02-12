printing
printContentOn: aStream
	super printContentOn: aStream.
	aStream nextPut: $.; nextPutAll: self method.
	JSStream encodeArguments: self arguments on: aStream
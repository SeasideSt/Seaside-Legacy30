printing
printOn: aStream
	aStream javascript: owner; nextPut: $.; nextPutAll: self method.
	JSStream encodeArguments: self arguments on: aStream
printing
printOn: aStream
	aStream javascript: owner; nextPut: $.; nextPutAll: self method; arguments: self arguments
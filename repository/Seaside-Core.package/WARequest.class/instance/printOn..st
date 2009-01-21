printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' method: '; nextPutAll: self method.
	aStream nextPutAll: ' url: '; nextPutAll: self url seasideString
printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' url: '; print: self request url seasideString
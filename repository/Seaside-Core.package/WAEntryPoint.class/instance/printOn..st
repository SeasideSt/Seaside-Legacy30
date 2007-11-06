printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' named: '; print: self name
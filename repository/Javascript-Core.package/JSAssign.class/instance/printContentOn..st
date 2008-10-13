printing
printContentOn: aStream
	aStream nextPutAll: self name; nextPut: $=.
	super printContentOn: aStream
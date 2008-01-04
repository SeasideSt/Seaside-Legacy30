printing
printContentOn: aStream
	super printContentOn: aStream.
	aStream nextPutAll: self operator; javascript: self statement
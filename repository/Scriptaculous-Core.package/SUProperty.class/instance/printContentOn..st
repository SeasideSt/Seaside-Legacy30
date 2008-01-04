printing
printContentOn: aStream
	super printContentOn: aStream.
	aStream nextPut: $[; javascript: self name; nextPut: $]
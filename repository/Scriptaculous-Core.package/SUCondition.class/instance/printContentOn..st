printing
printContentOn: aStream
	aStream nextPutAll: 'if('; javascript: self statement; nextPutAll: '){'.
	super printContentOn: aStream.
	aStream nextPut: $}
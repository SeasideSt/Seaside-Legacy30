printing
printContentOn: aStream
	aStream javascript: self statement; nextPut: $;.
	super printContentOn: aStream
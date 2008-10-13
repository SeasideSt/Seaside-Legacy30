printing
printContentOn: aStream
	aStream nextPut: $(.
	super printContentOn: aStream.
	aStream nextPut: $?.
	aStream javascript: self trueStatement.
	aStream nextPut: $:.
	aStream javascript: self falseStatement.
	aStream nextPut: $)
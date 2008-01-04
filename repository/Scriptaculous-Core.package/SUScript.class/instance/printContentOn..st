printing
printContentOn: aStream
	statements
		do: [ :each | aStream javascript: each ]
		separatedBy: [ aStream nextPut: $; ]
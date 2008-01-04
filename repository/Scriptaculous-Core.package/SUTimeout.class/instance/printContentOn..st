printing
printContentOn: aStream
	aStream nextPutAll: 'setTimeout(function(){'.
	super printContentOn: aStream.
	aStream nextPutAll: '},'; javascript: self duration; nextPut: $)
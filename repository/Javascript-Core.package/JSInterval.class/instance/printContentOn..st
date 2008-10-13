printing
printContentOn: aStream
	aStream nextPutAll: 'setInterval(function(){'.
	super printContentOn: aStream.
	aStream nextPutAll: '},'; javascript: self duration; nextPut: $)
printing
printContentOn: aStream
	aStream nextPutAll: '$$'.
	JSStream encodeArguments: self selectors on: aStream
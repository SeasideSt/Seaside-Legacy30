printing
printContentOn: aStream
	super printContentOn: aStream.
	(self name isNil or: [ self name isEmpty ])
		ifFalse: [ aStream nextPut: $.; nextPutAll: self name ].
	JSStream encodeArguments: self arguments on: aStream
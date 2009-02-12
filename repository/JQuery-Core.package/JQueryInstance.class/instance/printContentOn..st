printing
printContentOn: aStream
	super printContentOn: aStream.
	JSStream encodeArguments: arguments on: aStream
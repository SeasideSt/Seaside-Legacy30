printing
printContentOn: aStream
	super printContentOn: aStream..
	JSStream encodeArguments: self arguments on: aStream
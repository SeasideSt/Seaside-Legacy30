printing
printContentOn: aStream
	self printPrototypeOn: aStream.
	self method
		ifNotNil: [ self printMethodOn: aStream ].
	self printArgumentsOn: aStream
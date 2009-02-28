printing
printContentOn: aStream
	self printPrototypeOn: aStream.
	self method isNil
		ifFalse: [ self printMethodOn: aStream ].
	self printArgumentsOn: aStream
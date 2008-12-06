evaluation
evaluateWithArgument: anObject
	block isNil
		ifFalse: [ block valueWithPossibleArgument: anObject ].
	self requestContext
		respond: WAResponse new doNotCache
evaluation
evaluateWithArgument: anObject
	anObject isNil
		ifFalse: [ block valueWithPossibleArgument: anObject ]
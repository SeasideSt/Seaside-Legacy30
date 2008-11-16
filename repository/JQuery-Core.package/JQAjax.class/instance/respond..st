private
respond: anObject
	"Evaluate the callback if possible. In any case, we just respond with an empty response if the callback does nothing better."
	
	callback isNil
		ifFalse: [ callback valueWithPossibleArgument: anObject ].
	owner requestContext respond: WAResponse new
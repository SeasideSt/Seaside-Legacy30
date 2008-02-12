evaluation
evaluateWithArgument: anObject
	| callback |
	callback := context callbackAt: anObject.
	callback isNil ifFalse: [ callback evaluateWithArgument: nil ]
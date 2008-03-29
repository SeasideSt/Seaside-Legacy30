evaluation
evaluateWithArgument: anObject 
	| callback |
	callback := renderContext callbackAt: anObject.
	callback isNil ifFalse: [ callback evaluateWithArgument: nil ]
evaluation
evaluateWithField: anObject
	self isEnabled ifFalse: [ ^ self ].
	self evaluateWithArgument: (self valueForField: anObject)
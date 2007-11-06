evaluation
evaluateWithField: anObject
	(anObject isCollection and: [ anObject isString not ])
		ifFalse: [ ^ super evaluateWithField: anObject ].
	anObject do: [ :each |
		self evaluateWithArgument: (self valueForField: each) ]
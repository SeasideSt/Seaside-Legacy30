processing
processCallbacksWithOwner: anObject
	| callback |
	[callbacks atEnd not and: [callbacks peek owner == anObject]] whileTrue:
		[callback := callbacks next.
		callback evaluateWithField: (request fields at: callback key)]
processing
processCallbacksWithOwner: anObject 
	| callback |
	[ self hasCallbacksForOwner: anObject ] whileTrue: [
		callback := callbacks next.
		callback evaluateWithField: (request fields at: callback key) ]
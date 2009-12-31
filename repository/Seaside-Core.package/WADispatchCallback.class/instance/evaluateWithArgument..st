evaluation
evaluateWithArgument: anObject
	callbacks at: anObject ifPresent: [ :callback | callback evaluateWithField: nil ]
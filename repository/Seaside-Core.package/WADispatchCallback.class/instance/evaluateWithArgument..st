evaluation
evaluateWithArgument: anObject
	(context callbackAt: anObject)
		ifNotNilDo: [ :callback | callback evaluateWithArgument: nil ]
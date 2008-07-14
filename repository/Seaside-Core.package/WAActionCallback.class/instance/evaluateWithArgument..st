evaluation
evaluateWithArgument: anObject
	(block numArgs = 0)
		ifTrue: [block value]
		ifFalse: [block value: anObject].
	self signalRenderNotification
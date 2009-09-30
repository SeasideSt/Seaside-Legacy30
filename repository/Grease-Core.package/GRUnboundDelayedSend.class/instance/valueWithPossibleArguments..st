evaluating
valueWithPossibleArguments: anArray
	^ anArray size < selector numArgs
		ifTrue: [ self invalidArgumentCount ]
		ifFalse: [ self valueWithArguments: (anArray first: selector numArgs) ]
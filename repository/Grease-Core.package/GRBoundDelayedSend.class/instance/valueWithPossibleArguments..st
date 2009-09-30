evaluating
valueWithPossibleArguments: anArray
	| composed |
	^ (composed := arguments , anArray) size < selector numArgs
		ifTrue: [ self invalidArgumentCount ]
		ifFalse: [ receiver perform: selector withArguments: (composed first: selector numArgs) ]
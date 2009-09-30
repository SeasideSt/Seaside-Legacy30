evaluating
valueWithArguments: anArray
	^ arguments size + anArray size = selector numArgs
		ifTrue: [ receiver perform: selector withArguments: arguments , anArray ]
		ifFalse: [ self invalidArgumentCount ]
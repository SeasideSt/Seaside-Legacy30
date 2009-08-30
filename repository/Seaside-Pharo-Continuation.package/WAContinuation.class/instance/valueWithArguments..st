evaluating
valueWithArguments: anArray
	anArray size = 1
		ifFalse: [ ^ WAInvalidArgumentCount signal: 'Continuations can only be resumed with one argument.' ].
	self value: anArray first
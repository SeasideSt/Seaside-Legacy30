evaluation
evaluateWithField: anObject
	| selectedValues keys |
	selectedValues := OrderedCollection new.
	keys := OrderedCollection new.
	anObject isString
		ifTrue: [ keys add: anObject greaseInteger ]
		ifFalse: [anObject isCollection 
					ifTrue: [ keys := anObject collect: [:each | each greaseInteger] ] ].
	keys do: [:each | values at: each greaseInteger ifPresent: [:value | selectedValues add: value ] ].
	block valueWithPossibleArguments: (Array with: selectedValues) 
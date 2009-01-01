evaluation
evaluateWithField: anObject
	| sorted |
	(anObject isString or: [ anObject isCollection not ])
		ifTrue: [ ^ super evaluateWithField: anObject ].
	sorted := SortedCollection new.
	anObject do: [ :each |
		callbacks at: each ifPresent: [ :callback |
			sorted add: callback ] ].
	sorted do: [ :callback | callback evaluateWithField: nil ]
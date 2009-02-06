load and test
showUndeclared

	| newUndeclared |
	newUndeclared := Undeclared keys.
	baseUndeclared do: [:each | newUndeclared remove: each].
	newUndeclared isEmpty ifTrue: [^self].
	Transcript cr; tab; show: 'Undeclared: ' , newUndeclared asSortedCollection asArray printString.
	
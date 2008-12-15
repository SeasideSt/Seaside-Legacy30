private-parsing
parseDigit
	| next |
	next := self current asInteger.
	(next between: 48 "$0" and: 57 "$9")
		ifFalse: [ self syntaxError: 'expeted digit' ].
	^next - 48
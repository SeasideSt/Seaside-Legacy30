private-parsing
parseDigit19
	| next |
	next := self current asInteger.
	(next between: 49 "$1" and: 57 "$9")
		ifFalse: [ self syntaxError: 'expeted non-zero digit' ].
	^next - 48
private-parsing
parseHex
	| next |
	next := self next asInteger.
	(next between: 48 "$0" and: 57 "$9")
		ifTrue: [ ^ next - 48 ].
	(next between: 65 "$A" and: 70 "$F")
		ifTrue: [ ^ next - 55 ].
	self syntaxError: 'expected hex character'
private-parsing
parseFraction
	| next places number |
	next := self next.
	places := 0.
	number := 0.
	[ next between: $0 and: $9 ] whileTrue: [
		places := places + 1.
		number := number * 10 + self parseDigit.
		next := self next ].
	places = 0
		ifTrue: [ self syntaxError: 'fraction part expected' ].
	^ScaledDecimal
		newFromNumber: number / (10 raisedTo: places)
		scale: places
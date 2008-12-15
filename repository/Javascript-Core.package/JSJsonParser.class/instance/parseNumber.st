private-parsing
parseNumber
	| negated number current |
	negated := self current = $-.
	negated ifTrue: [ self next ].
	number := self parseDigit.
	current := self next.
	number isZero ifFalse: [
			[ current between: $0 and: $9 ] whileTrue: [
				number := number * 10 + self parseDigit.
				current := self next ] ].
	current = $. ifTrue: [
		number := number + self parseFraction ].
	current := self current.
	(current = $e or: [ current = $E ])
		ifTrue: [ number := number * self parseExp ].
	self isWhiteSpace ifTrue: [
		"numbers don't have a terminator or a fixed length"
		self nextNonWhiteSpace ].
	^negated
		ifTrue: [ number negated ]
		ifFalse: [ number ]
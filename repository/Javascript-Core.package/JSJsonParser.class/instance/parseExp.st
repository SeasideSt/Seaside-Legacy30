private-parsing
parseExp
	| next negated number |
	next := self next.
	negated := next = $-.
	(negated or: [ next = $+ ])
		ifTrue: [ next := self next ].
	(next between: $0 and: $9)
		ifFalse: [ self syntaxError: 'exponent expected' ].
	number := 0.
	[ next between: $0 and: $9 ] whileTrue: [
		number := number * 10 + self parseDigit.
		next := self next ].
	negated ifTrue: [ number := number negated ].
	^ 10 raisedTo: number
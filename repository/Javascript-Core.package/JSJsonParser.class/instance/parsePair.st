private-parsing
parsePair
	| key value |
	key := self parseString.
	self current ~= $:
		ifTrue: [ self syntaxError: 'expected :' ].
	self nextNonWhiteSpace. "consume :"
	value := self parseValue.
	^ key -> value
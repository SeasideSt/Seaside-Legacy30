private-parsing
parseString
	| result |
	self current ~= $"
		ifTrue: [ self syntaxError: 'expected: "' ].
	result := String streamContents: [ :stream |
		[ self next ~= $" ] whileTrue: [
			stream nextPut: self parseChar ] ].
	self nextNonWhiteSpace.
	^result
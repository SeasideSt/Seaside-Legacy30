utilities
parseNumber: aString
	| result |
	result := self parse: '{ "number" : ', aString ,' }'.
	^result at: 'number'
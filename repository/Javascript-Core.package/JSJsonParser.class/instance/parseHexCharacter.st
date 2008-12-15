private-parsing
parseHexCharacter
	| value |
	value := self parseHex.
	3 timesRepeat: [
		value := (value << 4) bitOr: self parseHex ].
	^Character value: value
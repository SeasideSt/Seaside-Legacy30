testing
testFromString
	| string |
	string := 'abCD12_-'.
	self assert: (WAExternalID fromString: string) printString = string
testing-array
testEmptyArray
	| result |
	result := self parse: '[]'.
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result isEmpty)
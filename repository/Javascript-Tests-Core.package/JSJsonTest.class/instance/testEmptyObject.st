testing-objects
testEmptyObject
	| result |
	result := self parse: '{}'.
	self assert: (result isKindOf: Dictionary).
	self assert: (result isEmpty)
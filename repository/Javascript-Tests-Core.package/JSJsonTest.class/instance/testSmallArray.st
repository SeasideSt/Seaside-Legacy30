testing-array
testSmallArray
	| result |
	result := self parse: '[a]'.
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result at: 1) = 'a'.
	self assert: (result size) = 1
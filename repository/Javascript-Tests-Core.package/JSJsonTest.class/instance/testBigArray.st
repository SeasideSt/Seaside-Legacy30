testing-array
testBigArray
	| result |
	result := self parse: '[a,b]'.
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result at: 1) = 'a'.
	self assert: (result at: 2) = 'b'.
	self assert: (result size) = 2
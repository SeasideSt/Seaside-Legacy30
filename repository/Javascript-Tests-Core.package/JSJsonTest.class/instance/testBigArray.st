testing-array
testBigArray
	| result |
	result := self parse: '[a,b]'.
	self assert: (result isKindOf: OrderedCollection).
	self assert: (result at: 1) == #a.  "Must use == to ensure parse result is a Symbol"
	self assert: (result at: 2) == #b.  "Must use == to ensure parse result is a Symbol"
	self assert: (result size) = 2
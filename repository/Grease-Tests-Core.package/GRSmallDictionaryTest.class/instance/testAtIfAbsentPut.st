testing-accessing
testAtIfAbsentPut
	self assert: (dictionary at: '1' ifAbsentPut: [ 'foo' ]) = 'foo'.
	self assert: (dictionary at: '1' ifAbsentPut: [ 'bar' ]) = 'foo'
testing-accessing
testAtIfAbsent
	self assert: (dictionary at: '1' ifAbsent: [ 'foo' ]) = 'foo'.
	dictionary at: '1' put: 'bar'.
	self assert: (dictionary at: '1' ifAbsent: [ 'foo' ]) = 'bar'
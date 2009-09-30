testing-accessing
testAtPut
	dictionary at: '1' put: 'foo'.
	self assert: (dictionary at: '1') = 'foo'.
	dictionary at: '1' put: 'bar'.
	self assert: (dictionary at: '1') = 'bar'
testing-testing
testIncludesKey
	self deny: (dictionary includesKey: '1').
	dictionary at: '1' put: 'foo'.
	self assert: (dictionary includesKey: '1')
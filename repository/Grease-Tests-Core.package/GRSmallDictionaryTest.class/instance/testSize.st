testing-accessing
testSize
	self assert: dictionary isEmpty.
	dictionary at: '1' put: 'foo'.
	self assert: dictionary size = 1.
	dictionary at: '2' put: 'bar'.
	self assert: dictionary size = 2
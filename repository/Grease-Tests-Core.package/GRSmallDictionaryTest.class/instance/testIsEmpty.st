testing-testing
testIsEmpty
	self assert: dictionary isEmpty.
	dictionary at: '1' put: 'foo'.
	self deny: dictionary isEmpty
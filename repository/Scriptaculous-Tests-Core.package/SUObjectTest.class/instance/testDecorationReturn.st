testing-decoration
testDecorationReturn
	self
		assert: (self mock return: 1)
		equals: 'mock;return 1'
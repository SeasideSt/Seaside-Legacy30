testing-decoration
testDecorationAfter
	self
		assert: (self mock after: (self stream nextPutAll: 'after'))
		equals: 'mock;after'
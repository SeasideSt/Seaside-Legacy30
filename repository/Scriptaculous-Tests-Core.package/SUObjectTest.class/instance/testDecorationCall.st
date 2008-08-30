testing-decoration
testDecorationCall
	self
		assert: (self mock call: 'foo')
		equals: 'mock.foo()'
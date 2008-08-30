testing-decoration
testDecorationAccess
	self
		assert: (self mock access: 'foo')
		equals: 'mock.foo'
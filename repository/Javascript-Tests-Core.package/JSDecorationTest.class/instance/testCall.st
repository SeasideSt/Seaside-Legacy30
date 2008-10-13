testing
testCall
	self
		assert: (self mock call: 'foo')
		equals: 'mock.foo()'
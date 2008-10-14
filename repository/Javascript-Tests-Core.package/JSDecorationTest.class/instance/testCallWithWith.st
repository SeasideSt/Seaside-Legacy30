testing
testCallWithWith
	self
		assert: (self mock call: 'foo' with: 1 with: 2)
		equals: 'mock.foo(1,2)'
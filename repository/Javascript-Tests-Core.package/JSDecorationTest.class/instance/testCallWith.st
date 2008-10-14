testing
testCallWith
	self
		assert: (self mock call: 'foo' with: 1)
		equals: 'mock.foo(1)'
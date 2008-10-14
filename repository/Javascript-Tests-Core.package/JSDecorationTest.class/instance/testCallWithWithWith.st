testing
testCallWithWithWith
	self
		assert: (self mock call: 'foo' with: 1 with: 2 with: 3)
		equals: 'mock.foo(1,2,3)'
testing
testCallArgument
	self
		assert: (self mock call: 'foo' argument: 1)
		equals: 'mock.foo(1)'
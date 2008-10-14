testing
testCallWithArguments
	self
		assert: (self mock call: 'foo' withArguments: #(1 2 3 4 5))
		equals: 'mock.foo(1,2,3,4,5)'
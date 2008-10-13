testing
testCallArguments
	self
		assert: (self mock call: 'foo' arguments: #( 'bar' 1 ))
		equals: 'mock.foo("bar",1)'
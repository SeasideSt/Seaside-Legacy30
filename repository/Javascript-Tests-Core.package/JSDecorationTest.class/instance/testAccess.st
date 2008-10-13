testing
testAccess
	self
		assert: (self mock access: 'foo')
		equals: 'mock.foo'
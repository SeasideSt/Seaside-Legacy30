testing-finding
testFind
	self
		assert: ((self jQuery: 'div') find: ':even')
		equals: self name , '("div").find(":even")'
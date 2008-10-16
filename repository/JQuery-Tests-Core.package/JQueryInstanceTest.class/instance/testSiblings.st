testing-finding
testSiblings
	self
		assert: (((self jQuery: 'div')) siblings)
		equals: self name , '("div").siblings()'.
	self
		assert: ((self jQuery: 'div') siblings: 'p')
		equals: self name , '("div").siblings("p")'
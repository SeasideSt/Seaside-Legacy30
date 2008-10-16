testing-finding
testNext
	self
		assert: (((self jQuery: 'div')) next)
		equals: self name , '("div").next()'.
	self
		assert: ((self jQuery: 'div') next: 'p')
		equals: self name , '("div").next("p")'
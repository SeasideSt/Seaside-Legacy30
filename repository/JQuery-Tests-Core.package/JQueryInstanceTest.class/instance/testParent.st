testing-finding
testParent
	self
		assert: (((self jQuery: 'div')) parent)
		equals: self name , '("div").parent()'.
	self
		assert: ((self jQuery: 'div') parent: 'p')
		equals: self name , '("div").parent("p")'
testing-finding
testChildren
	self
		assert: (((self jQuery: 'div')) children)
		equals: self name , '("div").children()'.
	self
		assert: ((self jQuery: 'div') children: 'p')
		equals: self name , '("div").children("p")'
testing-finding
testParents
	self
		assert: (((self jQuery: 'div')) parents)
		equals: self name , '("div").parents()'.
	self
		assert: ((self jQuery: 'div') parents: 'p')
		equals: self name , '("div").parents("p")'
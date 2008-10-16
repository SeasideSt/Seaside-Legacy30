testing-finding
testNextAll
	self
		assert: (((self jQuery: 'div')) nextAll)
		equals: self name , '("div").nextAll()'.
	self
		assert: ((self jQuery: 'div') nextAll: 'p')
		equals: self name , '("div").nextAll("p")'
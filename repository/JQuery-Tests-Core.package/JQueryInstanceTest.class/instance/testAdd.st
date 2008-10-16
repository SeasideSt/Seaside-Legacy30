testing-finding
testAdd
	self
		assert: ((self jQuery: 'div') add: 'p')
		equals: self name , '("div").add("p")'
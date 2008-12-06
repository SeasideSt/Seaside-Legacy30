testing-navigating
testAdd
	self
		assert: ((self jQuery: 'div') add: 'p')
		equals: self function , '("div").add("p")'
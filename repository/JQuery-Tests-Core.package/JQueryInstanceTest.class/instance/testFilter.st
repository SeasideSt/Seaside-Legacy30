testing-filtering
testFilter
	self
		assert: ((self jQuery: 'div') filter: 'p')
		equals: self name , '("div").filter("p")'
testing-with
testWithString
	self
		assert: (self jQuery: 'div > p')
		equals: self name , '("div > p")'
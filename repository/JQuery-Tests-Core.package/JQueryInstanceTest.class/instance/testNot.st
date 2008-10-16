testing-filtering
testNot
	self
		assert: ((self jQuery: 'div') not: ':even')
		equals: self name , '("div").not(":even")'
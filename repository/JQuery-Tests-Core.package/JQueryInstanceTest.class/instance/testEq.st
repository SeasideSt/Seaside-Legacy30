testing-filtering
testEq
	self
		assert: ((self jQuery: 'div') eq: 4)
		equals: self name , '("div").eq(4)'.
	self
		assert: ((self jQuery: 'div') eq: -1)
		equals: self name , '("div").eq(-1)'
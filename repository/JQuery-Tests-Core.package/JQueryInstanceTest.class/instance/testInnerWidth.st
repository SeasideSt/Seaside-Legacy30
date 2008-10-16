testing-css
testInnerWidth
	self
		assert: (((self jQuery: 'div')) innerWidth)
		equals: self name , '("div").innerWidth()'
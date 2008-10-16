testing-css
testInnerHeight
	self
		assert: (((self jQuery: 'div')) innerHeight)
		equals: self name , '("div").innerHeight()'
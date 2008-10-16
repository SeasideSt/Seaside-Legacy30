testing-css
testOffset
	self
		assert: (((self jQuery: 'div')) offset)
		equals: self name , '("div").offset()'
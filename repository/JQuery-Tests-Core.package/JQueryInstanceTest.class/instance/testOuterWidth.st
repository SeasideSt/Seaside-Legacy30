testing-css
testOuterWidth
	self
		assert: (((self jQuery: 'div')) outerWidth)
		equals: self name , '("div").outerWidth()'
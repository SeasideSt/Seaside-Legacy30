testing-css
testOuterHeight
	self
		assert: (((self jQuery: 'div')) outerHeight)
		equals: self name , '("div").outerHeight()'
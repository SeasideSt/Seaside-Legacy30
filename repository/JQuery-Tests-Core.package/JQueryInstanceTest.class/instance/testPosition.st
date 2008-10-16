testing-css
testPosition
	self
		assert: (((self jQuery: 'div')) position)
		equals: self name , '("div").position()'
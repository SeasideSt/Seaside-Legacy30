testing-css
testHeight
	self
		assert: (((self jQuery: 'div')) height)
		equals: self name , '("div").height()'.
	self
		assert: (((self jQuery: 'div')) height: 17)
		equals: self name , '("div").height(17)'
testing-css
testWidth
	self
		assert: (((self jQuery: 'div')) width)
		equals: self name , '("div").width()'.
	self
		assert: (((self jQuery: 'div')) width: 17)
		equals: self name , '("div").width(17)'
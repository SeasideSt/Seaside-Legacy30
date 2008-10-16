testing-css
testScrollLeft
	self
		assert: (((self jQuery: 'div')) scrollLeft)
		equals: self name , '("div").scrollLeft()'.
	self
		assert: (((self jQuery: 'div')) scrollLeft: 17)
		equals: self name , '("div").scrollLeft(17)'
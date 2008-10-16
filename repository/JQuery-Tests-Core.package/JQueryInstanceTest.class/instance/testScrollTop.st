testing-css
testScrollTop
	self
		assert: (((self jQuery: 'div')) scrollTop)
		equals: self name , '("div").scrollTop()'.
	self
		assert: (((self jQuery: 'div')) scrollTop: 17)
		equals: self name , '("div").scrollTop(17)'
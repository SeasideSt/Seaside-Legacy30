testing-finding
testPrev
	self
		assert: (((self jQuery: 'div')) prev)
		equals: self name , '("div").prev()'.
	self
		assert: ((self jQuery: 'div') prev: 'p')
		equals: self name , '("div").prev("p")'
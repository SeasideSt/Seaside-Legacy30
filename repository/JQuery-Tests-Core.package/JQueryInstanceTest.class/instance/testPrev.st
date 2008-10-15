testing-finding
testPrev
	self
		assert: ((self jQuery @ 'div') prev)
		equals: self function , '("div").prev()'.
	self
		assert: (self jQuery @ 'div' prev: 'p')
		equals: self function , '("div").prev("p")'
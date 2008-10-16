testing-finding
testPrevAll
	self
		assert: (((self jQuery: 'div')) prevAll)
		equals: self function , '("div").prevAll()'.
	self
		assert: ((self jQuery: 'div') prevAll: 'p')
		equals: self function , '("div").prevAll("p")'
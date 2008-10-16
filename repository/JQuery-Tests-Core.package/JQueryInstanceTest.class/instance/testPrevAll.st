testing-finding
testPrevAll
	self
		assert: (((self jQuery: 'div')) prevAll)
		equals: self name , '("div").prevAll()'.
	self
		assert: ((self jQuery: 'div') prevAll: 'p')
		equals: self name , '("div").prevAll("p")'
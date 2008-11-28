testing-modifying
testCopying
	self
		assert: (((self jQuery: 'p')) clone)
		equals: self function , '("p").clone()'.
	self
		assert: (((self jQuery: 'p')) cloneAll)
		equals: self function , '("p").clone(true)'
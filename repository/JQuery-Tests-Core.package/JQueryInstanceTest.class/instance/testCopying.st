testing-modifying
testCopying
	self
		assert: (((self jQuery: 'p')) clone)
		equals: self name , '("p").clone()'.
	self
		assert: (((self jQuery: 'p')) cloneAll)
		equals: self name , '("p").clone(true)'
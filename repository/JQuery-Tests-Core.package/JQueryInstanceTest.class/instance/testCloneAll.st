testing-copying
testCloneAll
	self
		assert: (((self jQuery: 'div')) cloneAll)
		equals: self name , '("div").clone(true)'
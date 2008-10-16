testing-finding
testContents
	self
		assert: (((self jQuery: 'div')) contents)
		equals: self name , '("div").contents()'
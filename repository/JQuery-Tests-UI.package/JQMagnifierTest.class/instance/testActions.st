testing
testActions
	self
		assert: ((self jQuery: 'input') magnifier reset)
		equals: self name , '("input").magnifier("reset")'
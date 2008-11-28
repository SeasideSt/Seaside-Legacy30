testing
testActions
	self
		assert: ((self jQuery: 'input') magnifier reset)
		equals: self function , '("input").magnifier("reset")'
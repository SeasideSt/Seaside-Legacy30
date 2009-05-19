testing-accessors
testSize
	self
		assert: ((self jQuery: 'div') size)
		equals: self function , '("div").size()'
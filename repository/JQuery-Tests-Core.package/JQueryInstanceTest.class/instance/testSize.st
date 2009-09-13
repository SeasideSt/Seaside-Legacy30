testing-accessors-smalltalk
testSize
	self
		assert: ((self jQuery: 'div') size)
		equals: self function , '("div").length'
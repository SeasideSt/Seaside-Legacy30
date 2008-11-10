testing-accessors
testSize
	self
		assert: ((self jQuery: 'div') size)
		equals: self name , '("div").length()'
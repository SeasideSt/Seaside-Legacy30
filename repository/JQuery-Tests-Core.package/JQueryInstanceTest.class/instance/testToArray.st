testing-accessors
testToArray
	self
		assert: ((self jQuery: 'div') toArray)
		equals: self function , '("div").toArray()'
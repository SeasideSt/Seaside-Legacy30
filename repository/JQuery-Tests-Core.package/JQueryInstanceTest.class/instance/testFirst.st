testing-accessors-smalltalk
testFirst
	self
		assert: ((self jQuery: 'div') first)
		equals: self function , '("div").get(0)'
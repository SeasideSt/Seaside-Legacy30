testing
testActions
	self
		assert: ((self jQuery: 'div') spinner start: 123)
		equals: self function , '("div").spinner({start:123})'
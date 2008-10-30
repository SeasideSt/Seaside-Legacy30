testing
testActions
	self
		assert: ((self jQuery: 'div') spinner start: 123)
		equals: self name , '("div").spinner({start:123})'
testing-creation
testExpressionContext
	self
		assert: (self jQuery expression: '#foo' context: 123)
		equals: self name , '("#foo",123)'
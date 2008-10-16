testing-creation
testExpression
	self
		assert: (self jQuery expression: '#foo')
		equals: self name , '("#foo")'.
	self
		assert: (self jQuery expression: 'div > p')
		equals: self name , '("div > p")'.
	self
		assert: (self jQuery expression: 'ul li.active')
		equals: self name , '("ul li.active")'

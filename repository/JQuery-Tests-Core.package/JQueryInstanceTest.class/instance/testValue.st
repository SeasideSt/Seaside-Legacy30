testing-manipulating
testValue
	self 
		assert: (((self jQuery: 'input')) value)
		equals: self function , '("input").value()'.
	self 
		assert: ((self jQuery: 'input') value: 'bar')
		equals: self function , '("input").value("bar")'
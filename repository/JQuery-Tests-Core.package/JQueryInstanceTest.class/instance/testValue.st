testing-manipulating
testValue
	self 
		assert: (((self jQuery: 'input')) value)
		equals: self name , '("input").value()'.
	self 
		assert: ((self jQuery: 'input') value: 'bar')
		equals: self name , '("input").value("bar")'
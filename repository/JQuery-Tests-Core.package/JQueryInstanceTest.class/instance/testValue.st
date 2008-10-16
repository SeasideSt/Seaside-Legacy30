testing-manipulating
testValue
	self 
		assert: ((self jQuery: 'input') value)
		equals: self name , '("input").val()'.
	self 
		assert: ((self jQuery: 'input') value: 'bar')
		equals: self name , '("input").val("bar")'
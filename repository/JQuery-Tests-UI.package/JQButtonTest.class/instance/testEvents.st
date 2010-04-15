tests
testEvents
	self
		assert: ((self jQuery: 'input') button onClick: 123)
		equals: self function , '("input").button({"click":function(){123}})'
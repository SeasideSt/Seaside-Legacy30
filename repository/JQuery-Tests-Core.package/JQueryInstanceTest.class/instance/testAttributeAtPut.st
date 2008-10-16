testing-attributes
testAttributeAtPut
	self
		assert: ((self jQuery: 'button:gt(1)') attributeAt: 'disabled' put: true)
		equals: self name , '("button:gt(1)").attr("disabled",true)'
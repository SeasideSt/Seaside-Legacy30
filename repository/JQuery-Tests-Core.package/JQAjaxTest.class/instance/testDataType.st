testing-options
testDataType
	self
		assert: (self ajax dataType: 'xml')
		equals: self name , '.ajax({dataType:"xml"})'
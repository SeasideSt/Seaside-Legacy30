testing-options
testDataType
	self
		assert: (self ajax reset; dataType: 'xml')
		equals: self name , '.ajax({dataType:"xml"})'
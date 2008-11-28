testing-options
testDataType
	self
		assert: (self ajax reset; dataType: 'xml')
		equals: self function , '.ajax({dataType:"xml"})'
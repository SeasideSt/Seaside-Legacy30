testing-options
testProcessData
	self
		assert: (self ajax reset; processData: false)
		equals: self function , '.ajax({processData:false})'
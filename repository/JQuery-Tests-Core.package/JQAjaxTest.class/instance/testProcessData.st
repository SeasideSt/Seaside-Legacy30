testing-options
testProcessData
	self
		assert: (self ajax reset; processData: false)
		equals: self name , '.ajax({processData:false})'
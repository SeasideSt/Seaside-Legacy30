testing-options
testProcessData
	self
		assert: (self ajax processData: false)
		equals: self name , '.ajax({processData:false})'
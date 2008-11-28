testing-options
testType
	self
		assert: (self ajax reset; type: 'post')
		equals: self function , '.ajax({type:"POST"})'
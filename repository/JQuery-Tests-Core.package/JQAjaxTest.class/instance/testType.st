testing-options
testType
	self
		assert: (self ajax reset; type: 'post')
		equals: self name , '.ajax({type:"POST"})'
testing-options
testType
	self
		assert: (self ajax type: 'post')
		equals: self name , '.ajax({type:"POST"})'
testing-parameters
testAddParameterValue
	self 
		assert: (self ajax addParameter: 'foo' value: true)
		equals: self name , '.ajax({data:{foo:true}})'
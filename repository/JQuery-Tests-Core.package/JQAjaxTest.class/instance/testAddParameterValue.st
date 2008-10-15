testing-parameters
testAddParameterValue
	self 
		assert: (self ajax addParameter: 'foo' value: true)
		equals: self function , '.ajax({data:{foo:true}})'
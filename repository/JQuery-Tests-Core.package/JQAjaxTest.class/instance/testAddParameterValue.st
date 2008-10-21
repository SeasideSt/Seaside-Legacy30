testing-parameters
testAddParameterValue
	self 
		assert: (self ajax reset; addParameter: 'foo' -> true)
		equals: self name , '.ajax({data:"foo="+true})'
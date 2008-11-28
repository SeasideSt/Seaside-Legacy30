testing-parameters
testAddParameterValue
	self 
		assert: (self ajax reset; addParameter: 'foo' -> true)
		equals: self function , '.ajax({data:"foo="+true})'
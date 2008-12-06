testing-parameters
testAddParameterValue
	self 
		assert: (self ajax addParameter: 'foo' -> true)
		equals: self function , '.ajax({data:"foo="+true})'
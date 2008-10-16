testing-parameters
testAddParameterValue
	self 
		assert: (self ajax addParameter: 'foo' -> true)
		equals: self name , '.ajax({data:["foo="+true].join("&")})'
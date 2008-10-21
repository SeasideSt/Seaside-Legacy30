testing-parameters
testAddParameter
	self 
		assert: (self ajax reset; addParameter: 'foo')
		equals: self name , '.ajax({data:"foo"})'
testing-parameters
testAddParameter
	self 
		assert: (self ajax reset; addParameter: 'foo')
		equals: self function , '.ajax({data:"foo"})'
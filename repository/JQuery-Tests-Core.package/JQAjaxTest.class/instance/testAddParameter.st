testing-parameters
testAddParameter
	self 
		assert: (self ajax addParameter: 'foo')
		equals: self function , '.ajax({data:"foo"})'
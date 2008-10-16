testing-parameters
testAddParameter
	self 
		assert: (self ajax addParameter: 'foo')
		equals: self name , '.ajax({data:{foo:null}})'
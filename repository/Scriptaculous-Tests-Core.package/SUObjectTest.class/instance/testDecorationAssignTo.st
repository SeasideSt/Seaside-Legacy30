testing-decoration
testDecorationAssignTo
	self
		assert: (self mock assignTo: 'x')
		equals: 'x=mock'
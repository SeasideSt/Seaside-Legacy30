testing-decoration
testDecorationAssignLocalTo
	self
		assert: (self mock assignLocalTo: 'x')
		equals: 'var x=mock'
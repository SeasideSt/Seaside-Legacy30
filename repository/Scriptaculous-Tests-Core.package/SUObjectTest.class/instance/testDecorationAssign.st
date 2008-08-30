testing-decoration
testDecorationAssign
	self
		assert: (self mock assign: 1)
		equals: 'mock=1'.
	self
		assert: (self mock assign: self element)
		equals: 'mock=$(this)'
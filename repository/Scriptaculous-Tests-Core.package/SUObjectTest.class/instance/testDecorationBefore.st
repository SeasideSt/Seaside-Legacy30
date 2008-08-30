testing-decoration
testDecorationBefore
	self
		assert: (self mock before: (self stream nextPutAll: 'before'))
		equals: 'before;mock'
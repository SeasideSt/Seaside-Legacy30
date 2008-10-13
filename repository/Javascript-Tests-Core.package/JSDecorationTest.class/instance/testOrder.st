testing
testOrder
	self
		assert: (self mock before: 1; after: 2)
		equals: '1;mock;2'.
	self
		assert: (self mock after: 2; before: 1)
		equals: '1;mock;2'.
	self
		assert: (self mock after: 1; condition: true)
		equals: 'if(true){mock;1}'.
	self
		assert: (self mock condition: false; after: 1)
		equals: 'if(false){mock};1'
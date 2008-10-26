testing-creation
testNew
	self
		assert: (self jQuery new)
		equals: self name , '("*")'.
	self
		assert: (self jQuery new id: 'foo')
		equals: self name , '("#foo")'
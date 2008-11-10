testing-creation
testNew
	self
		assert: (self jQuery new)
		equals: self name , '(this)'.
	self
		assert: (self jQuery new id: 'foo')
		equals: self name , '("#foo")'
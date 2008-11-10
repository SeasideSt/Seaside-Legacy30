testing-creation
testAll
	self
		assert: (self jQuery all)
		equals: self name , '("*")'
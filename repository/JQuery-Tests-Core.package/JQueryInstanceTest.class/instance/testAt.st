testing-accessors
testAt
	self
		assert: ((self jQuery: 'div') at: 1)
		equals: self name , '("div").get(1)'.
	self
		assert: ((self jQuery: 'div') atAll)
		equals: self name , '("div").get()'
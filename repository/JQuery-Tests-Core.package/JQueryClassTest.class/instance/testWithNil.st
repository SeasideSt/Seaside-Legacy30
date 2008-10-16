testing-with
testWithNil
	self
		assert: (self jQuery: nil)
		equals: self name , '(this)'
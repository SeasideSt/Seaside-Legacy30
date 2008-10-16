testing-with
testWithSymbol
	self
		assert: (self jQuery: #foo)
		equals: self name , '("#foo")'
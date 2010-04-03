testing
testPost
	self
		assert: (self jQuery post)
		equals: self function , '.post("/")'
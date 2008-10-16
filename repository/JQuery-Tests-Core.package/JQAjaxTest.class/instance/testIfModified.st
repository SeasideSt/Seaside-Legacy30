testing-options
testIfModified
	self
		assert: (self ajax ifModified: false)
		equals: self name , '.ajax({ifModified:false})'
testing-options
testIfModified
	self
		assert: (self ajax reset; ifModified: false)
		equals: self name , '.ajax({ifModified:false})'
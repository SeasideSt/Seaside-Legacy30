testing-options
testIfModified
	self
		assert: (self ajax reset; ifModified: false)
		equals: self function , '.ajax({ifModified:false})'
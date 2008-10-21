testing-options
testTimeout
	self
		assert: (self ajax reset; timeout: 1200)
		equals: self name , '.ajax({timeout:1200})'
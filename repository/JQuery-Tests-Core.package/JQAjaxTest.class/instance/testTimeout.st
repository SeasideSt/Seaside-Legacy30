testing-options
testTimeout
	self
		assert: (self ajax reset; timeout: 1200)
		equals: self function , '.ajax({timeout:1200})'
testing-options
testCache
	self
		assert: (self ajax reset; cache: false)
		equals: self function , '.ajax({cache:false})'
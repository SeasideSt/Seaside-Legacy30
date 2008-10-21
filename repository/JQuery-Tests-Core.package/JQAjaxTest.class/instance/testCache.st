testing-options
testCache
	self
		assert: (self ajax reset; cache: false)
		equals: self name , '.ajax({cache:false})'
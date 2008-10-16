testing-options
testCache
	self
		assert: (self ajax cache: false)
		equals: self name , '.ajax({cache:false})'
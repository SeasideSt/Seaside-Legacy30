testing-options
testAsync
	self
		assert: (self ajax reset; async: true)
		equals: self name , '.ajax({async:true})'
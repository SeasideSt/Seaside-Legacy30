testing-options
testAsync
	self
		assert: (self ajax reset; async: true)
		equals: self function , '.ajax({async:true})'
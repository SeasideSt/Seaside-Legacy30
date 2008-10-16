testing-options
testAsync
	self
		assert: (self ajax async: true)
		equals: self name , '.ajax({async:true})'
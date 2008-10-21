testing-options
testUsername
	self
		assert: (self ajax reset; username: 'seaside')
		equals: self name , '.ajax({username:"seaside"})'
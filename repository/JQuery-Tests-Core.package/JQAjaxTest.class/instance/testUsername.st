testing-options
testUsername
	self
		assert: (self ajax reset; username: 'seaside')
		equals: self function , '.ajax({username:"seaside"})'
testing-options
testUsername
	self
		assert: (self ajax username: 'seaside')
		equals: self name , '.ajax({username:"seaside"})'
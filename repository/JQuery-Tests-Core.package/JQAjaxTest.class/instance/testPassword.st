testing-options
testPassword
	self
		assert: (self ajax password: 'topsecret')
		equals: self name , '.ajax({password:"topsecret"})'
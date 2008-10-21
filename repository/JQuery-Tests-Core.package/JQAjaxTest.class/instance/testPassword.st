testing-options
testPassword
	self
		assert: (self ajax reset; password: 'topsecret')
		equals: self name , '.ajax({password:"topsecret"})'
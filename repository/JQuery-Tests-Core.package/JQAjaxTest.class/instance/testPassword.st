testing-options
testPassword
	self
		assert: (self ajax reset; password: 'topsecret')
		equals: self function , '.ajax({password:"topsecret"})'
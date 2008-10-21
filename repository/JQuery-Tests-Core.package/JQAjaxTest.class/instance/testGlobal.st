testing-options
testGlobal
	self
		assert: (self ajax reset; global: false)
		equals: self name , '.ajax({global:false})'
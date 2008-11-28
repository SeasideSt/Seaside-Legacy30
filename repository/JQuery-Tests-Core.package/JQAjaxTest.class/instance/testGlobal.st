testing-options
testGlobal
	self
		assert: (self ajax reset; global: false)
		equals: self function , '.ajax({global:false})'
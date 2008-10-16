testing-options
testGlobal
	self
		assert: (self ajax global: false)
		equals: self name , '.ajax({global:false})'
testing-options
testScriptCharset
	self
		assert: (self ajax reset; scriptCharset: 'utf-8')
		equals: self name , '.ajax({scriptCharset:"utf-8"})'
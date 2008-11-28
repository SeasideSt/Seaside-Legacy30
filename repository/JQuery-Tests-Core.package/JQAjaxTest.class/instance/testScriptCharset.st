testing-options
testScriptCharset
	self
		assert: (self ajax reset; scriptCharset: 'utf-8')
		equals: self function , '.ajax({scriptCharset:"utf-8"})'
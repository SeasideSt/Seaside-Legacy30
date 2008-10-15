testing-options
testUrl
	self
		assert: (self ajax url: 'http://www.seaside.st/')
		equals: self function , '.ajax({url:"http://www.seaside.st/"})'.
	self
		assert: (self ajax url: (WAUrl absolute: 'http://www.seaside.st/'))
		equals: self function , '.ajax({url:"http://www.seaside.st/"})'
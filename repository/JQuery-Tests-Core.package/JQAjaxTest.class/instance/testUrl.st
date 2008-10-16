testing-options
testUrl
	self
		assert: (self ajax url: 'http://www.seaside.st/')
		equals: self name , '.ajax({url:"http://www.seaside.st/"})'.
	self
		assert: (self ajax url: (WAUrl absolute: 'http://www.seaside.st/'))
		equals: self name , '.ajax({url:"http://www.seaside.st/"})'
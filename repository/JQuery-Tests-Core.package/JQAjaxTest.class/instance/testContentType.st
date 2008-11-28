testing-options
testContentType
	self
		assert: (self ajax reset; contentType: 'text/html')
		equals: self function , '.ajax({contentType:"text/html"})'
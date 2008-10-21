testing-options
testContentType
	self
		assert: (self ajax reset; contentType: 'text/html')
		equals: self name , '.ajax({contentType:"text/html"})'
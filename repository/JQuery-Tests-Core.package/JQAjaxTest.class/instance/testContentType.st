testing-options
testContentType
	self
		assert: (self ajax contentType: 'text/html')
		equals: self name , '.ajax({contentType:"text/html"})'
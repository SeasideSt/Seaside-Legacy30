testing-encoding
testQueryEncoding
	self
		assert: (url withParameter: '/' value: ' ')
			printString = '/?%2F=+'.
	self
		assert: (url withParameter: '+' value: '%')
			printString = '/?%2B=%25'.
	self
		assert: (url withParameter: '?' value: '&')
			printString = '/?%3F=%26'.
	self
		assert: (url withParameter: '[' value: ']')
			printString = '/?%5B=%5D'.
	self
		assert: (url withParameter: '=' value: '<')
			printString = '/?%3D=%3C'
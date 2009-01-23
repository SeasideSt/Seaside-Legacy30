testing-encoding
testQueryEncoding
	self
		assert: (url withParameter: '/' value: ' ')
			printString = '/?%2f=%20'.
	self
		assert: (url withParameter: '+' value: '%')
			printString = '/?%2b=%25'.
	self
		assert: (url withParameter: '?' value: '&')
			printString = '/?%3f=%26'.
	self
		assert: (url withParameter: '[' value: ']')
			printString = '/?%5b=%5d'.
	self
		assert: (url withParameter: '=' value: '<')
			printString = '/?%3d=%3c'
testing
testTakeServerParametersFromRequestHttps
	| request |
	
	request := WARequest
		method: 'GET'
		url: (WAUrl new scheme: 'https'; yourself)
		headers: (Dictionary new
			at: 'host' put: 'www.thehost.com:1337';
			yourself)
		fields: Dictionary new
		cookies: Array new
		remoteAddress: '127.0.0.1'.
		
	url takeServerParametersFromRequest: request.
	self assert: url hostname = 'www.thehost.com'.
	self assert: url port = 1337.
	self assert: url scheme = 'https'.
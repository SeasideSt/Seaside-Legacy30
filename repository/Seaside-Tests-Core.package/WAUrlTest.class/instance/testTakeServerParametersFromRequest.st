testing
testTakeServerParametersFromRequest
	| request |
	request := WARequest
		method: 'GET'
		url: WAUrl new
		headers: (Dictionary new
			at: 'host' put: 'www.seaside.st:8080';
			yourself)
		fields: Dictionary new
		cookies: Array new
		remoteAddress: '127.0.0.1'.
		
	url takeServerParametersFromRequest: request.
	self assert: url hostname = 'www.seaside.st'.
	self assert: url port = 8080.
	
	request := WARequest
		method: 'GET'
		url: WAUrl new
		headers: (Dictionary new
			at: 'host' put: 'www.thehost.com:1337';
			yourself)
		fields: Dictionary new
		cookies: Array new
		remoteAddress: '127.0.0.1'.
		
	url takeServerParametersFromRequest: request.
	self assert: url hostname = 'www.seaside.st'.
	self assert: url port = 8080.
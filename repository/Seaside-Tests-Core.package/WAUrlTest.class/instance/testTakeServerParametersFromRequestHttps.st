testing
testTakeServerParametersFromRequestHttps
	| request |
	
	request := (WARequest method: 'GET' uri: (WAUrl new scheme: 'https'; yourself))
		setHeaders: (Dictionary new
			at: 'host' put: 'www.thehost.com:1337';
			yourself);
		yourself..
		
	url takeServerParametersFromRequest: request.
	self assert: url hostname = 'www.thehost.com'.
	self assert: url port = 1337.
	self assert: url scheme = 'https'.
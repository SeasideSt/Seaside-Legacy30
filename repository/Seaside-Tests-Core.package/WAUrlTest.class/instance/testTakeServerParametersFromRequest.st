testing
testTakeServerParametersFromRequest
	| request |
	request := WARequest new
		setHeaders: (Dictionary new
			at: 'host' put: 'www.seaside.st:8080';
			yourself);
		yourself.
		
	url takeServerParametersFromRequest: request.
	self assert: url hostname = 'www.seaside.st'.
	self assert: url port = 8080.
	self assert: url scheme = 'http'
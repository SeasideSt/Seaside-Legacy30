testing
testWrongKey
	| cookie |
	cookie := WARequestCookie key: '_k' value: '1234'.
	request := WARequest
		method: 'GET'
		url: '/'
		headers: Dictionary new
		fields: Dictionary new
		cookies: (Array with: cookie)
		remoteAddress: '127.0.0.1'.
	self assert: (handler sessionCookieFor: request) isNil
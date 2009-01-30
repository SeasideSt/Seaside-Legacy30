testing
testWrongKey
	| cookie request context actual |
	cookie := WARequestCookie key: (handler keyCookieName, '-not') value: '1234'.
	request := WARequest
		method: 'GET'
		url: '/'
		headers: Dictionary new
		fields: Dictionary new
		cookies: (Array with: cookie)
		remoteAddress: '127.0.0.1'.
	context := self requestContextFor: request.
	actual := handler cookieFromContext: context ifAbsent: [ nil ].
	self assert: actual isNil
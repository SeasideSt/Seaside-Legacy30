testing
testOnlyOne
	| cookie1 cookie2 request context |
	cookie1 := WARequestCookie key: handler keyCookieName value: '1234'.
	request := WARequest
		method: 'GET'
		url: '/'
		headers: Dictionary new
		fields: Dictionary new
		cookies: (Array with: cookie1)
		remoteAddress: '127.0.0.1'.
	context := self requestContextFor: request.
	cookie2 := handler cookieFromContext: context ifAbsent: [ nil ].
	self assert: cookie1 == cookie2
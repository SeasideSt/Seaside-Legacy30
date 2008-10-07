testing
testOnlyOne
	| cookie1 cookie2 |
	cookie1 := WARequestCookie key: '_s' value: '1234'.
	request := WARequest
		method: 'GET'
		url: '/'
		headers: Dictionary new
		fields: Dictionary new
		cookies: (Array with: cookie1)
		remoteAddress: '127.0.0.1'.
	cookie2 := handler sessionCookieFor: request.
	self assert: cookie1 == cookie2
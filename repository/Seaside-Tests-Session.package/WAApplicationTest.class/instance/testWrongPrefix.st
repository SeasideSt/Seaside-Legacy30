testing
testWrongPrefix
	| cookie1 cookie2 actual |
	cookie1 := WARequestCookie key: '_s' value: '1234'.
	cookie2 := (WARequestCookie key: '_s' value: '1234')
		path: '/one';
		yourself.

	request := WARequest
		method: 'GET'
		url: '/oneo'
		headers: Dictionary new
		fields: Dictionary new
		cookies: (Array
			with: cookie1
			with: cookie2)
		remoteAddress: '127.0.0.1'.
	actual := handler sessionCookieFor: request.
	self assert: actual == cookie1
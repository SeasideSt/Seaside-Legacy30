testing
testOneOfMany
	| cookie1 cookie2 cookie3 cookie4 actual |
	cookie1 := WARequestCookie key: '_s' value: '1234'.
	cookie2 := (WARequestCookie key: '_s' value: '1234')
		path: '/';
		yourself.
	cookie3 := (WARequestCookie key: '_s' value: '1234')
		path: '/1/2';
		yourself.
	cookie4 := (WARequestCookie key: '_s' value: '1234')
		path: '/1/2/3';
		yourself.
	request := WARequest
		method: 'GET'
		url: '/1/2'
		headers: Dictionary new
		fields: Dictionary new
		cookies: (Array
			with: cookie1
			with: cookie2
			with: cookie3
			with: cookie4)
		remoteAddress: '127.0.0.1'.
	actual := handler sessionCookieFor: request.
	self assert: actual == cookie3
testing
testWrongPrefix
	| cookie1 cookie2 actual request context |
	cookie1 := WARequestCookie key: handler keyCookieName value: '1234'.
	cookie2 := (WARequestCookie key: handler keyCookieName value: '1234')
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
	context := self requestContextFor: request.
	actual := handler cookieFromContext: context ifAbsent: [ nil ].
	self assert: actual == cookie1
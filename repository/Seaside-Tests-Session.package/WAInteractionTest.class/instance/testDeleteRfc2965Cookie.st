testing
testDeleteRfc2965Cookie
	| requestCookie responseCookies responseCookie |
	requestCookie := (WARequestCookie key: 'password' value: 'sex')
		path: '/en/private_kunden/wealth_management';
		version: 1;
		yourself.
	self setCookie: requestCookie.
	self context response deleteCookie: requestCookie.
	
	responseCookies := self context response cookies.
	self assert: responseCookies size = 1.
	responseCookie := responseCookies anyOne.
	
	self assert: (responseCookie isKindOf: WACookie).
	self assert: responseCookie value = ''.
	self assert: responseCookie path = '/en/private_kunden/wealth_management'
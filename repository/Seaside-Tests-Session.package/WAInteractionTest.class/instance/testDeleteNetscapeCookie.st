testing
testDeleteNetscapeCookie
	| requestCookie responseCookies responseCookie context |
	self application preferenceAt: #serverPath put: '/en/private_kunden/wealth_management'.
	requestCookie := WARequestCookie key: 'password' value: 'sex'.
	context := self requestContextWithUrl: '/' cookies: (Array with: requestCookie).
	context response deleteCookie: requestCookie.
	
	responseCookies := context response cookies.
	self assert: responseCookies size = 1.
	responseCookie := responseCookies anyOne.
	
	self assert: (responseCookie isKindOf: WACookie).
	self assert: responseCookie value = ''.
	self assert: responseCookie path = self application baseUrl pathString
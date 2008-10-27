private-cookies
testSessionCookie
	| response |
	self requestContext respondAndContinue: [ :url |
		url addParameter: self checkCookiesField.
		response := self requestContext redirectResponseFor: url.
		response addCookie: self sessionCookie.
		response ]
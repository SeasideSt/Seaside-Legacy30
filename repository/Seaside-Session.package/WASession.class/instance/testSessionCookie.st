private-cookies
testSessionCookie
	| response cookie get |
	self requestContext respondAndContinue: [ :url |
		url addParameter: self checkCookiesField.
		response := self requestContext redirectResponseFor: url.
		response addCookie: self sessionCookie.
		response ].
	"The following will be in a new request:"
	(self requestContext request fields includesKey: self checkCookiesField)
		ifTrue: [
			cookie := self requestContext application sessionCookieFor: self requestContext request.
			get := self requestContext request fields at: self requestContext application handlerField.
			(cookie value = get)
				ifTrue: [ cookiesEnabled := true ] ]
private-cookies
testSessionCookie
	| cookie |
	self requestContext redirectWithCookie: self sessionCookie.
	"The following will be in a new request:"
	cookie := self requestContext application sessionCookieFor: self requestContext request.
	(cookie value = self key seasideString)
		ifTrue: [ cookiesEnabled := true ]
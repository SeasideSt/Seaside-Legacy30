private
testSessionCookie
	| cookie |
	self requestContext redirectWithCookie: self sessionCookie.
	"The following will be in a new request:"
	cookie := self requestContext application sessionCookieFor: self requestContext request.
	
	(cookie value = self key seasideString)
		ifFalse: [ ^self ].
	
	cookiesEnabled := true.
	"Redirect to make sure the session key isn't sitting in the Location bar
	to be bookmarked or passed around by the user.'"
	self requestContext redirect
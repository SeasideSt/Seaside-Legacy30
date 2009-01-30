private-cookies
sessionCookiePresent
	| sessionCookie |
	"Another option would be to have the Registry cache the cookie in the request context."
	sessionCookie := self application
		cookieFromContext: self requestContext
		ifAbsent: [ nil ].
		
	^ sessionCookie notNil
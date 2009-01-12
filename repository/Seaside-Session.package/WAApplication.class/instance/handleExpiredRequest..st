private
handleExpiredRequest: aRequestContext
	| sessionCookie |
	sessionCookie := self sessionCookieFor: aRequestContext request.
	sessionCookie isNil 
		ifFalse: [ aRequestContext response deleteCookie: sessionCookie path: self baseUrl pathString ].
	super handleExpiredRequest: aRequestContext
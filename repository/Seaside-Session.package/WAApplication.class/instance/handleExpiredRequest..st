private
handleExpiredRequest: aRequestContext
	| response sessionCookie |
	response := super handleExpiredRequest: aRequestContext.
	sessionCookie := self sessionCookieFor: aRequestContext request.
	sessionCookie isNil 
		ifFalse: [ response deleteCookie: sessionCookie ].
	^ response
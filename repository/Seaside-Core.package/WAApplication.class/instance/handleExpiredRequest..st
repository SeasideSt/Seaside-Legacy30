request handling
handleExpiredRequest: aRequest
	| response sessionCookie |
	response := super handleExpiredRequest: aRequest.
	sessionCookie := (self sessionCookieFor: aRequest).
	sessionCookie isNil
		ifFalse: [ response deleteCookieAt: sessionCookie ].
	^ response
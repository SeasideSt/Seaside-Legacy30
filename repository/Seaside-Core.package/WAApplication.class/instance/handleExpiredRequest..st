request handling
handleExpiredRequest: aRequest
	| response |
	response := super handleExpiredRequest: aRequest.
	(aRequest cookieAt: self handlerCookieName) isNil
		ifFalse: [ response deleteCookieAt: self handlerCookieName ].
	^ response
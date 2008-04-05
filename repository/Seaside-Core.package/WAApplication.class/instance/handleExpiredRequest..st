request handling
handleExpiredRequest: aRequest
	| response |
	response := super handleExpiredRequest: aRequest.
	(self sessionCookieFor: aRequest) isNil
		ifFalse: [ response deleteCookieAt: self handlerCookieName ].
	^ response
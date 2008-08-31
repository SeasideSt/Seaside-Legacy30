processing
responseForRequest: aRequest
	| response sessionCookie |
	response := super responseForRequest: aRequest.
	sessionCookie := (WACurrentRequestContext application sessionCookieFor: aRequest).
	sessionCookie isNil ifFalse: [ response deleteCookie: sessionCookie ].
	^ response
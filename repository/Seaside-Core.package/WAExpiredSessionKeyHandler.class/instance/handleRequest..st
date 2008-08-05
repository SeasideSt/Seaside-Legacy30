processing
handleRequest: aRequest
	| response sessionCookie |
	response := super handleRequest: aRequest.
	sessionCookie := (WACurrentRequestContext application sessionCookieFor: aRequest).
	sessionCookie isNil ifFalse: [ response deleteCookie: sessionCookie ].
	^ response
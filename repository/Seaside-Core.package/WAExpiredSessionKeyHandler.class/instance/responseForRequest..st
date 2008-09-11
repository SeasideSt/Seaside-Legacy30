processing
responseForRequest: aRequest
	| response sessionCookie |
	response := super responseForRequest: aRequest.
	sessionCookie := self application sessionCookieFor: aRequest.
	sessionCookie isNil
		ifFalse: [ response deleteCookie: sessionCookie ].
	^ response
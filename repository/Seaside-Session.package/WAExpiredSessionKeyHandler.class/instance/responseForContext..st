processing
responseForContext: aRequestContext 
	| response sessionCookie |
	response := super responseForContext: aRequestContext.
	sessionCookie := aRequestContext application 
		sessionCookieFor: aRequestContext request.
	sessionCookie isNil 
		ifFalse: [ response deleteCookie: sessionCookie ].
	^ response
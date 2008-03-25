request handling
handleRequest: aRequest
	| cookie |
	cookie := aRequest cookieAt: self handlerCookieName.
	cookie isNil ifFalse: [ aRequest fields at: self handlerField ifAbsentPut: [ cookie ] ].
	^ super handleRequest: aRequest
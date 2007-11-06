request handling
handleRequest: aRequest
	(aRequest cookieAt: self handlerCookieName) ifNotNilDo: [ :value |
		aRequest fields
			at: self handlerField
			ifAbsentPut: [ value ] ].
	^ super handleRequest: aRequest
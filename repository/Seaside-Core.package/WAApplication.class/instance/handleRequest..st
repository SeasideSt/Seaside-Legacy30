request handling
handleRequest: aRequest
	| cookie |
	cookie := self sessionCookieFor: aRequest.
	cookie isNil ifFalse: [
		aRequest fields
			at: self handlerField
			ifAbsentPut: [ cookie value ] ].
	^ super handleRequest: aRequest
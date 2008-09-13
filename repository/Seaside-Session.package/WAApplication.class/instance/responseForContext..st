request handling
responseForContext: aRequestContext 
	| cookie |
	cookie := self sessionCookieFor: aRequestContext request.
	cookie isNil ifFalse: [
		aRequestContext request fields 
			at: self handlerField
			ifAbsentPut: [ cookie value ] ].
	^ super responseForContext: aRequestContext
deprecated
redirectWithMessage: aString delay: aNumber 
	self seasideDeprecatedApi: 'WASession>>redirectWithMessage:delay:'
		details: 'Use WARequestContext>>redirectWithMessage:delay:'.
		
	^ self requestContext redirectWithMessage: aString delay: aNumber
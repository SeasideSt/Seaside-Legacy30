deprecated
redirectWithCookie: aCookie
	self seasideDeprecatedApi: 'WASession>>redirectWithCookie:'
		details: 'Use WARequestContext>>redirectWithCookie:'.
		
	^ self requestContext redirectWithCookie: aCookie
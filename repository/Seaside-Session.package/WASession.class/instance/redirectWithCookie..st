deprecated
redirectWithCookie: aCookie
	self 
		seasideDeprecatedApi: 'WASession>>#redirectWithCookie:'
		details: 'Do self requestContent response #addCooke:.'.
	^ self requestContext redirectWithCookie: aCookie
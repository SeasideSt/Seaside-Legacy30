deprecated
redirect
	self seasideDeprecatedApi: 'WASession>>redirect'
		details: 'Use WARequestContext>>redirect'.
		
	^ self requestContext redirect
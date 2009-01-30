deprecated
redirect
	self 
		seasideDeprecatedApi: 'WASession>>#redirect'
		details: 'Use WARequestContext>>#redirect (requires the Seaside-Flow package).'.
	^ self requestContext redirect
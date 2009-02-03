deprecated
redirectWithMessage: aString delay: aNumber 
	self
		seasideDeprecatedApi: 'WASession>>#redirectWithMessage:delay:'
		details: 'Use WARequestContext>>#redirectWithMessage:delay: (requires the Seaside-Flow package).'.
	^ self requestContext redirectWithMessage: aString delay: aNumber
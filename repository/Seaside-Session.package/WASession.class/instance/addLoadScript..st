deprecated
addLoadScript: aString
	self
		seasideDeprecatedApi: 'WASession>>#addLoadScript:'
		details: 'Use WARequestContext>>#addLoadScript:. For example: "self requestContext addLoadScript:".'.
	^ self requestContext addLoadScript: aString
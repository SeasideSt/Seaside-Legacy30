scripts
addLoadScript: aString
	self deprecatedApi: 'Use WAContext>>#addLoadScript:'.
	^ self requestContext addLoadScript: aString
deprecated
redirectTo: aUrlOrString
	self
		seasideDeprecatedApi: 'WASession>>#redirectTo:'
		details: 'Use WARequestContext>>#redirectTo:.'.
	^ self requestContext redirectTo: aUrlOrString
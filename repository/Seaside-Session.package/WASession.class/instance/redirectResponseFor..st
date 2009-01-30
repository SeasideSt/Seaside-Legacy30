deprecated
redirectResponseFor: aUrlOrString
	self
		seasideDeprecatedApi: 'WASession>>#redirectResponseFor:'
		details: 'Use WARequestContext>>#redirectTo:.'.
	self requestContext redirectTo: aUrlOrString
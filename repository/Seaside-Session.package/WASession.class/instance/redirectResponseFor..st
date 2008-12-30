deprecated
redirectResponseFor: aUrlOrString
	self
		seasideDeprecatedApi: 'WASession>>#redirectResponseFor:'
		details: 'Use redirectResponseFor:.'.
	^ self requestContext redirectResponseFor: aUrlOrString
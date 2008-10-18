deprecated
redirectResponseFor: aUrlOrString
	self seasideDeprecatedApi: 'WASession>>redirectResponseFor:'
		details: 'Use WARequestContext>>redirectResponseFor:'.
		
	^ self requestContext redirectResponseFor: aUrlOrString
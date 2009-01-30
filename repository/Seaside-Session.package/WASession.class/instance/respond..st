deprecated
respond: aBlock 
	self
		seasideDeprecatedApi: 'WASession>>#respond:'
	 	details: 'Use WARequestContext>>#respondAndContinue:. (requires the Seaside-Flow package)'.
	^ self requestContext respondAndContinue: aBlock
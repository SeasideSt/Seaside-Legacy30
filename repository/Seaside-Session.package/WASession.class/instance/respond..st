deprecated
respond: aBlock 
	self
		seasideDeprecatedApi: 'WASession>>#respond:'
	 	details: 'Use WARequestContext>>#respondAndContinue:.'.
	^ self requestContext respondAndContinue: aBlock
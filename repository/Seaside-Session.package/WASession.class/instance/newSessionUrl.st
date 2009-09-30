deprecated
newSessionUrl
	self 
		greaseDeprecatedApi: 'WASession>>#newSessionUrl'
		details: 'Use WAApplication>>#baseUrl.'.
	^ self application baseUrl
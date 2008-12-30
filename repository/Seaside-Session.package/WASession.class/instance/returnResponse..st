deprecated
returnResponse: aResponse
	self 
		seasideDeprecatedApi: 'WASession>>#returnResponse:'
		details: 'Use WARequestContext>>#respond:. Common usage would be "self requestContext respond:".'.
	self requestContext respond: aResponse
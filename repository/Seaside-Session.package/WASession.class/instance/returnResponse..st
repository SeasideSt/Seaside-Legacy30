deprecated
returnResponse: aResponse
	self seasideDeprecatedApi: 'WASession>>returnResponse:'
		details: 'Use WARequestContext>>returnResponse:. Common usage would be "self requestContext returnResponse:".'.
	self requestContext returnResponse: aResponse
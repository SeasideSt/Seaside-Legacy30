deprecated
currentRequest
	"Returns the current request object."

	self
		seasideDeprecatedApi: 'WASession>>#currentRequest'
		details: 'Use WARequestContext>>#request directly. For example: "self requestContext request".'.
	^ self requestContext request
deprecated
currentRequest
	"returns the current WARequest"
	self seasideDeprecatedApi: 'WASession>>currentRequest'
		details: 'Use WARequestContext>>request directly. For example: "self requestContext request".'.
	^self requestContext request
deprecated
currentRequest
	"returns the current WARequest"
	self deprecatedApi: 'use WARequestContext >> #request directly'.
	^self requestContext request
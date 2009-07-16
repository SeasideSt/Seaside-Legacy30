converting
requestFor: aNativeRequest
	"Answer a request object for aNativeRequest."

	^ WARequest
		method: (self requestMethodFor: aNativeRequest)
		url: (self requestUrlFor: aNativeRequest)
		headers: (self requestHeadersFor: aNativeRequest)
		fields: (self requestFieldsFor: aNativeRequest)
		cookies: (self requestCookiesFor: aNativeRequest)
		remoteAddress: (self requestAddressFor: aNativeRequest)
		scheme: (self requestSchemeFor: aNativeRequest)
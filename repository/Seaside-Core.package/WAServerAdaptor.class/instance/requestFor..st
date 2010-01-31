converting
requestFor: aNativeRequest
	"Answer a request object for aNativeRequest."

	^ (WARequest
		method: (self requestMethodFor: aNativeRequest)
		uri: (self requestUrlFor: aNativeRequest)
		version: (self requestVersionFor: aNativeRequest))
			setHeaders: (self requestHeadersFor: aNativeRequest);
			setPostFields: (self requestFieldsFor: aNativeRequest);
			setBody: (self requestBodyFor: aNativeRequest);
			setCookies: (self requestCookiesFor: aNativeRequest);
			setRemoteAddress: (self requestAddressFor: aNativeRequest);
			yourself
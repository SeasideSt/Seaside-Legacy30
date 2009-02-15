converting
requestFor: aNativeRequest
	^ WARequest
		method: (self methodNameOf: aNativeRequest)
		url: (self urlFor: aNativeRequest)
		headers: (self convertHeader: aNativeRequest)
		fields: (self fieldsFor: aNativeRequest)
		cookies: (self cookiesFrom: aNativeRequest)
		remoteAddress: (self remoteAddressOf: aNativeRequest)
		nativeRequest: aNativeRequest
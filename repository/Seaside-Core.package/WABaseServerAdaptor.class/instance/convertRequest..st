private-converting
convertRequest: aNativeRequest
	^WARequest
		method: (self methodNameOf: aNativeRequest)
		url: (self urlFrom: aNativeRequest)
		headers: (self convertHeader: aNativeRequest)
		fields: (self fieldsOf: aNativeRequest)
		cookies: (self cookiesFrom: aNativeRequest)
		remoteAddress: (self remoteAddressOf: aNativeRequest)
		nativeRequest: aNativeRequest
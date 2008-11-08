private-converting
convertRequest: aSwazooRequest
	^WARequest
		method: aSwazooRequest methodName
		url: (self urlFrom: aSwazooRequest)
		headers: (self convertHeader: aSwazooRequest)
		fields: (self fieldsOf: aSwazooRequest)
		cookies: (self cookiesFrom: aSwazooRequest)
		remoteAddress: (self remoteAddressOf: aSwazooRequest)
		nativeRequest: aSwazooRequest
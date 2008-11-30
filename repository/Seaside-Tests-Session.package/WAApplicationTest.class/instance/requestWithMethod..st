running
requestWithMethod: aString
	^WARequest
		method: aString
		url: '/oneo'
		headers: Dictionary new
		fields: Dictionary new
		cookies: Array new
		remoteAddress: '127.0.0.1'
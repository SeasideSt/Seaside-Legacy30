utilities
requestContextWithUrl: aString
	^ WARequestContext
		server: self
		request: (WARequest
			method: 'GET'
			url: aString
			headers: Dictionary new
			fields: Dictionary new
			cookies: Array new
			remoteAddress: '127.0.0.1')
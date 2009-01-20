utilities
requestContextWithUrl: aString
	^ WARequestContext
		request:	(WARequest
			method: 'GET'
			url: aString
			headers: Dictionary new
			fields: Dictionary new
			cookies: Array new
			remoteAddress: '127.0.0.1')
		codec: self codec
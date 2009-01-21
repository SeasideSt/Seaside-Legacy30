utilities
requestContextWithUrl: aUrlOrString cookies: aCollection
	^ WARequestContext
		request:	(WARequest
			method: 'GET'
			url: aUrlOrString
			headers: Dictionary new
			fields: Dictionary new
			cookies: aCollection asArray
			remoteAddress: '127.0.0.1')
		codec: self codec
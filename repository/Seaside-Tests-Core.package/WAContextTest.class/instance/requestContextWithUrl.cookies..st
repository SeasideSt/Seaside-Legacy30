utilities
requestContextWithUrl: aUrlOrString cookies: aCollection
	| handlers |
	handlers := self requestContext handlers.
	self requestContext
		initializeWithRequest: (WARequest
			method: 'GET'
			url: aUrlOrString
			headers: Dictionary new
			fields: Dictionary new
			cookies: aCollection asArray
			remoteAddress: '127.0.0.1')
		response: WABufferedResponse new
		codec: self createCodec.
	self requestContext handlers addAll: handlers
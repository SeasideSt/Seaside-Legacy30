private
setCookie: aRequestCoookie
	self context request: (WARequest
		method: 'GET'
		url: WAUrl new
		headers: Dictionary new
		fields: Dictionary new
		cookies: (Array with: aRequestCoookie)
		remoteAddress: '127.0.0.1')
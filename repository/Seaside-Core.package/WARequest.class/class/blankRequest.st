instance creation
blankRequest
	^ self
		method: 'GET'
		url: WAUrl new
		headers: WAHeaderFields new
		fields: WAHeaderFields new
		cookies: Array new
		remoteAddress: nil
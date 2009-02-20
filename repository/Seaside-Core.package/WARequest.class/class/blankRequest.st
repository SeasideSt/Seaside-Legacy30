instance creation
blankRequest
	^ self
		method: 'GET'
		url: WAUrl new
		headers: Dictionary new
		fields: Dictionary new
		cookies: Array new
		remoteAddress: '' 
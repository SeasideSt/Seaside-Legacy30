instance-creation
blankRequest
	^ self
			method: 'GET'
			url: ''
			headers: Dictionary new
			fields: Dictionary new
			cookies: Dictionary new
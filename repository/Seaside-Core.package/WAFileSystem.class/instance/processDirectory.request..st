processing
processDirectory: aString request: aRequest
	^ WAResponse new
		contentType: 'text/html';
		nextPutAll: (self listing: aString forRequest: aRequest)
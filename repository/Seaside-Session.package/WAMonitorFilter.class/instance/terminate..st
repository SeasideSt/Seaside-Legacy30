private
terminate: aRequestContext
	monitor terminate.
	aRequestContext response
		contentType: WAMimeType textPlain;
		nextPutAll: 'Process terminated'.
	aRequestContext return
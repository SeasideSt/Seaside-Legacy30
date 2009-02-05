private
terminate: aRequestContext
	mutex terminateOwner.
	aRequestContext response
		contentType: WAMimeType textPlain;
		nextPutAll: 'Process terminated'.
	aRequestContext respond
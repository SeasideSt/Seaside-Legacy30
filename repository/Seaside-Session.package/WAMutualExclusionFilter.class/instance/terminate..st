private
terminate: aRequestContext
	self terminateOwner.
	aRequestContext response
		contentType: WAMimeType textPlain;
		nextPutAll: 'Process terminated'.
	aRequestContext respond
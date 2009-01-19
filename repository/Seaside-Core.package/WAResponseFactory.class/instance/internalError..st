generation
internalError: anException
	self response 
		internalError;
		contentType: WAMimeType textPlain;
		nextPutAll: 'Internal Error: ';
		nextPutAll: anException messageText
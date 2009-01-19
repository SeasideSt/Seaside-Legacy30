generation
notFound
	self response
		notFound;
		contentType: WAMimeType textPlain;
		nextPutAll: self request url seasideString;
		nextPutAll: ' not found'
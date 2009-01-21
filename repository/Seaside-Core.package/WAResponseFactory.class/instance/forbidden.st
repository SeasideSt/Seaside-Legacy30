generation
forbidden
	self response 
		forbidden;
		contentType: WAMimeType textPlain;
		nextPutAll: 'Error: you are forbidden to access "';
		nextPutAll: self request url seasideString;
		nextPutAll: '"'
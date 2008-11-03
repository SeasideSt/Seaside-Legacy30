instance creation
internalError: anError
	^ self new
		internalError;
		contentType: WAMimeType textPlain;
		nextPutAll: 'Internal Error: ';
		nextPutAll: anError description
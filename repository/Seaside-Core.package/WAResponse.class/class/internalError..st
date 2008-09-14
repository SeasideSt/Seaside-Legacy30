instance creation
internalError: anError
	^ self new
		internalError;
		contentType: 'text/plain' toMimeType;
		nextPutAll: 'Internal Error: ', anError description.
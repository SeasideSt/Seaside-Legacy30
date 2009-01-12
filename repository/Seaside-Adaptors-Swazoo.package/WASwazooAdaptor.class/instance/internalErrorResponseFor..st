private-response creation
internalErrorResponseFor: anError
	^HTTPResponse internalServerError
		contentType: 'text/plain';
		entity: 'Internal Error';
		yourself
private-response-creation
internalErrorResponseFor: anError
	^HTTPResponse internalServerError
		entity: 'Internal Error';
		yourself
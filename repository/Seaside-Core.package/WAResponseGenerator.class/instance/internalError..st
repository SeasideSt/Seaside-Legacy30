generation
internalError: anException
	"An internal error occured while processing the request."

	self response 
		internalError;
		contentType: WAMimeType textPlain;
		nextPutAll: 'Internal Error: ';
		nextPutAll: (anException messageText ifNil: [ String new ])
actions
handleDefault: anException
	self requestContext response
		internalError;
		contentType: WAMimeType textHtml;
		nextPutAll: (self rendererClass builder
			fullDocument: true;
			rootBlock: [ :root | root title: (self titleForException: anException) ];
			render: [ :html | self renderContentForException: anException on: html ]).
	self requestContext respond
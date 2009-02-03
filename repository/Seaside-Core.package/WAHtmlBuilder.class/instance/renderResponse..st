rendering
renderResponse: anObject
	"Renders anObject and returns the resulting document using the current response context. This automatically triggers full document rendering since returning a partial html document to the client makes no sense. See #render: for more discussion about anObject."
		
	self fullDocument: true.
	self requestContext response
		contentType: WAMimeType textHtml;
		nextPutAll: (self render: anObject);
		respond
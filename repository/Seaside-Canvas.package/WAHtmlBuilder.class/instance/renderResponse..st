rendering
renderResponse: anObject
	"renders anObject and returns the resulting document as a WAResponse
	this automatically triggers full document rendering since returning a partial
	html document to the client makes no sense
	see #render: for more discussion about anObject"
	self fullDocument: true.
	^ WAResponse new
		contentType: WAResponse defaultValueForMimeType;
		nextPutAll: (self render: anObject);
		yourself
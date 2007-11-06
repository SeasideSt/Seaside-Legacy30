instance creation
document: anObject mimeType: mimeType
	|doc|
	doc := anObject asMIMEDocumentType: mimeType.
	^ self new
		contentType: (mimeType ifNil: [doc contentType]);
		headerAt: 'Expires' put: 'Thu, 01 Jan 2095 12:00:00 GMT';
		nextPutAll: doc content;
		yourself
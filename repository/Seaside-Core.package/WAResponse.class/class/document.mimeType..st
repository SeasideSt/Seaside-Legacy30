instance creation
document: anObject mimeType: mimeType
	| document |
	document := anObject asMIMEDocumentType: mimeType.
	^ self new
		contentType: (mimeType ifNil: [ document contentType toMimeType ]);
		cacheForever;
		nextPutAll: document content;
		yourself
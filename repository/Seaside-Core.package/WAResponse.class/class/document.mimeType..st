instance creation
document: anObject mimeType: mimeType
	| document |
	document := anObject asMIMEDocumentType: mimeType.
	^ self new
		cacheForever;
		contentType: (mimeType ifNil: [ document contentType toMimeType ]);
		nextPutAll: document content;
		yourself
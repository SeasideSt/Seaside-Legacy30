instance creation
document: anObject mimeType: mimeType
	| document |
	document := anObject asMIMEDocumentType: mimeType.
	^ self new
		contentType: (mimeType ifNil: [ document contentType seasideMimeType ]);
		nextPutAll: document content;
		yourself
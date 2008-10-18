instance creation
document: anObject mimeType: mimeType
	| document |
	document := anObject seasideMimeDocumentType: mimeType.
	^ self new
		contentType: (mimeType ifNil: [ document contentType seasideMimeType ]);
		nextPutAll: document content;
		yourself
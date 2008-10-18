instance creation
document: anObject
	| document |
	document := anObject seasideMimeDocument.
	^ self new
		nextPutAll: document content;
		contentType: document mimeType;
		attachmentWithFileName: document fileName;
		yourself
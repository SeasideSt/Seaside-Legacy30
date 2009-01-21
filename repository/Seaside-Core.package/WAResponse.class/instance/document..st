documents
document: aDocument
	| document |
	document := aDocument seasideMimeDocument.
	self attachmentWithFileName: document fileName.
	self contentType: document mimeType.
	self nextPutAll: document content
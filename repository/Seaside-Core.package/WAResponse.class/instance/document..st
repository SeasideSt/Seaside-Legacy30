documents
document: aDocument
	| document |
	document := aDocument seasideMimeDocument.
	self contentType: document mimeType.
	self attachmentWithFileName: document fileName.
	self stream binary; nextPutAll: document content asString
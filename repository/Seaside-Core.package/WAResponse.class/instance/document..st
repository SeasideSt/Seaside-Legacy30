convenience
document: anObject
	| document |
	document := anObject seasideMimeDocument.
	self attachmentWithFileName: document fileName.
	self contentType: document mimeType.
	self nextPutAll: document content
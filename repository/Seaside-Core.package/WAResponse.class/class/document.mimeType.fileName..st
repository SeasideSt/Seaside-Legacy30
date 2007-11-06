instance creation
document: anObject mimeType: mimeString fileName: fileString
	^ (self document: anObject mimeType: mimeString)
		attachmentWithFileName: fileString;
		yourself
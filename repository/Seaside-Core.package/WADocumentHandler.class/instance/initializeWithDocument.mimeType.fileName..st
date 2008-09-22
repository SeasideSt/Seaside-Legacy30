initialization
initializeWithDocument: anObject mimeType: mimeString fileName: fileString
	document := anObject.
	mimeString isNil
		ifFalse: [ mimeType := mimeString toMimeType ].
	fileName := fileString
*Seaside-Core
asMIMEDocumentType: mimeType
	^WACollectionMimeDocument
		contentType: mimeType toMimeType
		content: self
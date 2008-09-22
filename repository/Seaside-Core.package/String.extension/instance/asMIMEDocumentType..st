*Seaside-Core
asMIMEDocumentType: mimeType
	^WACollectionMimeDocument
		contentType: mimeType seasideMimeType
		content: self
*Seaside-Core
asMIMEDocumentType: mimeType
	^SeasidePlatformSupport mimeDocumentClass
		contentType: mimeType toString
		content: self
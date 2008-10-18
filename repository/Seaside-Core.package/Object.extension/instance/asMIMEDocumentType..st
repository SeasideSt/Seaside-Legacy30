*Seaside-Core
asMIMEDocumentType: mimeType
	self seasideDeprecatedApi: '#asMIMEDocumentType:'
		details: 'Use #seasideMimeDocumentType:.'.
	^ self seasideMimeDocumentType: mimeType
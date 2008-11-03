*Seaside-Core
asMIMEDocumentType: mimeType
	self seasideDeprecatedApi: '#asMIMEDocumentType:'
		details: 'Use #seasideMimeDocument'.
	^ self seasideMimeDocument mimeType: mimeType
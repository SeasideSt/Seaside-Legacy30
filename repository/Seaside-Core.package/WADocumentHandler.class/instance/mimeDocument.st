accessing
mimeDocument
	^ mimeDocument ifNil: [ mimeDocument := document seasideMimeDocumentType: mimeType ]
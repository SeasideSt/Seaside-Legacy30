accessing
mimeDocument
	^ mimeDocument ifNil: [ mimeDocument := document asMIMEDocumentType: mimeType ]
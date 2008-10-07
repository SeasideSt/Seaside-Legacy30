private
createAndVerifyTextDocumentNamed: aFilename hasAttachement: aHttpHeaderValue
	self
		createAndVerifyDocumentNamed: aFilename
		content: 'body { background-color: #ffffff }'
		mimeType: WAMimeType textCss
		hasAttachement: aHttpHeaderValue
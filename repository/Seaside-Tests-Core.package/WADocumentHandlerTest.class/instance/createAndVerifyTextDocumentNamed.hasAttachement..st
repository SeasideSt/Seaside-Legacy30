private
createAndVerifyTextDocumentNamed: aFilename hasAttachement: aHttpHeaderValue
	self
		createAndVerifyDocumentNamed: aFilename
		content: 'body { background-color: #ffffff }'
		mimeType: 'text/css'
		hasAttachement: aHttpHeaderValue
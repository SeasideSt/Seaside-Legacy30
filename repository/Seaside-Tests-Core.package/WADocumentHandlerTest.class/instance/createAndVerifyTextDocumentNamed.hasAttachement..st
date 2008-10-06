private
createAndVerifyTextDocumentNamed: aFilename hasAttachement: aHttpHeaderValue
	self
		createAndVerifyDocumentNamed: aFilename
		content: WAStandardFiles default windowCss
		mimeType: 'text/css'
		hasAttachement: aHttpHeaderValue
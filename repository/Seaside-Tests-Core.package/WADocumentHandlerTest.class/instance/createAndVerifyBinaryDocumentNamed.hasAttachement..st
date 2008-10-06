private
createAndVerifyBinaryDocumentNamed: aFilename hasAttachement: aHttpHeaderValue
	self
		createAndVerifyDocumentNamed: aFilename
		content: WATestingFiles default profilerPng
		mimeType: 'image/png'
		hasAttachement: aHttpHeaderValue
private
createAndVerifyBinaryDocumentNamed: aFilename hasAttachement: aHttpHeaderValue
	self
		createAndVerifyDocumentNamed: aFilename
		content: WATestingFiles default samplePng
		mimeType: 'image/png'
		hasAttachement: aHttpHeaderValue
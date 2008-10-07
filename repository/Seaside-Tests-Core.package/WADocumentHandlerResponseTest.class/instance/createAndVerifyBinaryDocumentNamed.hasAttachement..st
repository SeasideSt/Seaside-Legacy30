private
createAndVerifyBinaryDocumentNamed: aFilename hasAttachement: aHttpHeaderValue
	self
		createAndVerifyDocumentNamed: aFilename
		content: WATestingFiles default samplePng
		mimeType: WAMimeType imagePng
		hasAttachement: aHttpHeaderValue
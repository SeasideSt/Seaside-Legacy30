testing
testByteArrayWithFilename
	self
		createAndVerifyBinaryDocumentNamed: 'sample.png'
		hasAttachment: 'attachment; filename="sample.png"'
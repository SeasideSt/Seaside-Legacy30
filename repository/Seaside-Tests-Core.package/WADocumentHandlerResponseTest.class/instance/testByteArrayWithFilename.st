testing
testByteArrayWithFilename
	self
		createAndVerifyBinaryDocumentNamed: 'sample.png'
		hasAttachement: 'attachment; filename="sample.png"'
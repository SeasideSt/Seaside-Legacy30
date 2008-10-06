testing
testByteArray
	self
		createAndVerifyBinaryDocumentNamed: nil
		hasAttachement: nil.
	self
		createAndVerifyBinaryDocumentNamed: 'sample.png'
		hasAttachement: 'attachment; filename="sample.png"'
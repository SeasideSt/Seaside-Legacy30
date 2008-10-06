testing
testByteArray
	self
		createAndVerifyBinaryDocumentNamed: nil
		hasAttachement: nil.
	self
		createAndVerifyBinaryDocumentNamed: 'profiler.png'
		hasAttachement: 'attachment; filename="profiler.png"'
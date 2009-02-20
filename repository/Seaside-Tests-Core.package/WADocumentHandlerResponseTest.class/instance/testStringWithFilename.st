testing
testStringWithFilename
	self
		createAndVerifyTextDocumentNamed: 'toolbar.css'
		hasAttachement: 'attachment; filename="toolbar.css"'
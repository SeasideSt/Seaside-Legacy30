testing
testString
	self
		createAndVerifyTextDocumentNamed: nil
		hasAttachement: nil.
	self
		createAndVerifyTextDocumentNamed: 'toolbar.css'
		hasAttachement: 'attachment; filename="toolbar.css"'
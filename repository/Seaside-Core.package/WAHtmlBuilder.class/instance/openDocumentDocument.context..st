private
openDocumentDocument: aDocument context: aContext
	self fullDocument ifTrue: [
		documentRoot := self rootClass context: aContext.
		self rootBlock value: documentRoot.
		documentRoot open: aDocument ]
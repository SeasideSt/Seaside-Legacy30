private
openDocumentDocument: aDocument context: aContext
	self fullDocument ifTrue: [
		documentRoot := self rootClass context: aContext.
		self rootBlock value: documentRoot.
		aDocument open: documentRoot ]
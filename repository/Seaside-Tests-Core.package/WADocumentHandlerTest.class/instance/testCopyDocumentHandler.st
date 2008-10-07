testing
testCopyDocumentHandler
	| copy mimeDoc |
	mimeDoc := handler mimeDocument.
	copy := handler copy.

	self assert: copy = handler.
	self assert: copy mimeType = handler mimeType.
	self deny: copy mimeType == handler mimeType.
	self assert: copy fileName = handler fileName.
	self deny: copy fileName == handler fileName.
	
	"This behaviour is somewhat open to debate. For now I am taking the position
	that the document should be identical but the mimeDocument should be
	regenerated. --jf"
	self assert: copy document == handler document.
	self assert: handler mimeDocument == mimeDoc.
	self deny: copy mimeDocument == mimeDoc.
	self assert: copy mimeDocument = mimeDoc.
	
testing
testAsMIMEDocumentStringColon
	| document |
	document := 'hello Seaside' seasideMimeDocumentType: 'text/x-weirdo' seasideMimeType.
	self assert: document contentType = 'text/x-weirdo' seasideMimeType.
	self assert: document content = 'hello Seaside'.
	self assert: (document seasideMimeDocumentType: 'text/x-weirdo' seasideMimeType) == document
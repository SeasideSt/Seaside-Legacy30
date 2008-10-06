testing
testAsMIMEDocumentString
	| document |
	document := 'hello Seaside' seasideMimeDocument.
	self assert: document contentType = WAMimeType textPlain.
	self assert: document content = 'hello Seaside'.
	self assert: (document seasideMimeDocumentType: WAMimeType textPlain) == document
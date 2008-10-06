testing
testMIMEDocumentType
	| other |

	other := document seasideMimeDocumentType: 'text/x-csrc' seasideMimeType.
		
	self assert: document content == other content.
	self assert: document contentType = WAMimeType textPlain.
	self assert: other contentType = 'text/x-csrc' seasideMimeType.
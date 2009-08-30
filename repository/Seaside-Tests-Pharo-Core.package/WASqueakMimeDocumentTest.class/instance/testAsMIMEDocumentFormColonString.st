testing
testAsMIMEDocumentFormColonString
	| form document |
	self formClassExists ifFalse: [ ^ self ].
	
	form := self sampleForm.
	document := form seasideMimeDocumentType: WAMimeType imageJpeg seasideString.
	self assert: document contentType = WAMimeType imageJpeg.
	self assert: (document content isKindOf: ByteArray)
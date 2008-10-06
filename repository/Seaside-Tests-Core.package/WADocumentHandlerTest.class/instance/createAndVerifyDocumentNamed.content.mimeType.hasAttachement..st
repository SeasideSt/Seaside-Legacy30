private
createAndVerifyDocumentNamed: aFilename content: anObject mimeType: aMimeTypeString hasAttachement: aHttpHeaderValue
	| handler response |
	handler := WADocumentHandler
		document: anObject
		mimeType: aMimeTypeString
		fileName: aFilename.
	self assert: handler document = anObject.
	response := handler response.
	self assert: (self headerAt: 'Expires' forResponse: response) notNil.
	self assert: (self headerAt: 'Content-Disposition' forResponse: response) = aHttpHeaderValue.
	self assertHttpResponseFrom: response matches: handler
documents
urlForDocument: anObject mimeType: mimeType fileName: fileName
	^self registry
		urlForRequestHandler:
			(WADocumentHandler
				document: anObject
				mimeType: mimeType
				fileName: fileName)
		addHandlerField: true
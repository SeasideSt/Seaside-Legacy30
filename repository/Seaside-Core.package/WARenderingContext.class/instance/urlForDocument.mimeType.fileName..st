documents
urlForDocument: anObject mimeType: mimeType fileName: fileName
	| handler |
	handler := (WADocumentHandler
					document: anObject
					mimeType: mimeType
					fileName: fileName).
	^self registry
			register: handler;
			urlFor: handler
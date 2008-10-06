running
setUp
	super setUp.
	document := WACollectionMimeDocument
		contentType: WAMimeType textPlain
		content: 'aString'
processing
processFile: aString request: aRequest
	^ WAResponse 
		document: (SeasidePlatformSupport 
			contentsOfFile: aString 
			binary: true)
		mimeType: (self mimetypeForRequest: aRequest)
		fileName: (aRequest url copyAfterLast: $/)
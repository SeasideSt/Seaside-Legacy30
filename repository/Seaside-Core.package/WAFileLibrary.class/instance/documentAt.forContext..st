accessing
documentAt: aFilename forContext: aRequestContext
	| selector |
	selector := self asSelector: aFilename.
	(self fileSelectors includes: selector) 
		ifFalse: [ ^ self ].
	aRequestContext respond: [ :response |
		response
			cacheFor: self cacheDuration;
			document: (self documentForFile: aFilename)
			mimeType: (self mimetypeForFile: aFilename) ]
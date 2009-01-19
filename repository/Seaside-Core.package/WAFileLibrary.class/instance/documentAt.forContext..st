accessing
documentAt: aFilename forContext: aRequestContext
	| selector |
	selector := self asSelector: aFilename.
	(self fileSelectors includes: selector)
		ifTrue: [ 
			aRequestContext response 
				document: (self documentForFile: aFilename)
				mimeType: (self mimetypeForFile: aFilename);
				cacheFor: self cacheDuration.
			aRequestContext return ]
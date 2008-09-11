accessing
documentAt: aFilename ifAbsent: aBlock
	| selector |
	selector := self asSelector: aFilename.
	^(self fileSelectors includes: selector)
		ifTrue: [ (WAResponse
			document: (self documentForFile: aFilename)
			mimeType: (self mimetypeForFile: aFilename))
			cacheForMinutes: 30;
			yourself ]
		ifFalse: [ aBlock value ]
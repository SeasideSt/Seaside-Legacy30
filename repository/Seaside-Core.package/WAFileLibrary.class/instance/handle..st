handling
handle: aRequestContext
	| fileName selector |
	fileName := aRequestContext consumer next.
	selector := self asSelector: fileName.
	(self fileSelectors includes: selector) 
		ifFalse: [ ^ self ].
	aRequestContext respond: [ :response |
		response
			cacheFor: self cacheDuration;
			document: (self documentForFile: fileName)
			mimeType: (self mimetypeForFile: fileName) ]
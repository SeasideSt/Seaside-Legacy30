handling
handle: aRequestContext
	| fileName selector fileHandler |
	fileName := aRequestContext consumer next.
	selector := self asSelector: fileName.
	(self fileSelectors includes: selector) 
		ifFalse: [ ^ self ].
	
	fileHandler := aRequestContext handler.
	fileHandler useXSendfile
		ifTrue: [
			aRequestContext respond: [ :response |
				response
					cacheFor: self cacheDuration;
					headerAt: 'X-Sendfile' put: (self fullPathForFileName: fileName using: fileHandler);
					contentType: (self mimetypeForFile: fileName) ] ]
		ifFalse: [
			aRequestContext respond: [ :response |
				response
					cacheFor: self cacheDuration;
					document: (self documentForFile: fileName)
					mimeType: (self mimetypeForFile: fileName) ] ]
handling
handle: aRequestContext
	| fileName selector |
	fileName := aRequestContext consumer next.
	selector := self asSelector: fileName.
	(self fileSelectors includes: selector) 
		ifFalse: [ ^ self ].
	
	(aRequestContext properties at: #useXSendfile ifAbsent: [false] ) ifTrue: [
		((aRequestContext properties at: #xSendfileAlwaysDeploy) or: [ (self isDeployed: selector) not ])
			ifTrue: [ self deployFile: selector ].
		aRequestContext respond: [ :response |
			response
				useXSendfile: fileName
				fullPath: (self class deployedFileFor: selector)
				mimeType: (self mimetypeForFile: fileName) ]].
	
	aRequestContext respond: [ :response |
		response
			cacheFor: self cacheDuration;
			document: (self documentForFile: fileName)
			mimeType: (self mimetypeForFile: fileName) ]
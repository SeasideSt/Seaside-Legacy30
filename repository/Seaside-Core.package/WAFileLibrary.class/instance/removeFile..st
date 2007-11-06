actions
removeFile: aFilename
	SeasidePlatformSupport
		removeSelector: (self asSelector: aFilename)
		from: self class
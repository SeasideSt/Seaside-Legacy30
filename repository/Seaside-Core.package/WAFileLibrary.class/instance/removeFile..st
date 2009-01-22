actions
removeFile: aFilename
	WAPlatform current
		removeSelector: (self asSelector: aFilename)
		from: self class
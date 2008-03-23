actions
removeFile: aFilename
	self
		removeSelector: (self asSelector: aFilename)
		from: self class
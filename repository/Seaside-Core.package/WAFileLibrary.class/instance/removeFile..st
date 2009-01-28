actions
removeFile: aFilename
	| selector |
	selector := self asSelector: aFilename.
	self localCache removeKey: selector ifAbsent: [].
	WAPlatform current
		removeSelector: selector
		from: self class
attributes
allAttributes
	^ Array streamContents:
		[:s |
		self withAllAncestorsDo: [:ea | s nextPutAll: ea attributes]]
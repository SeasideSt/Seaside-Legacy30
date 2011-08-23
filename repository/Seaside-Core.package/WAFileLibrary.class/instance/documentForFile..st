accessing
documentForFile: aFilename
	^ self perform: (self asSelector: aFilename)
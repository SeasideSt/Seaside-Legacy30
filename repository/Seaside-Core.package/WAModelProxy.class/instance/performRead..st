private
performRead: aSymbol
	^ cache
		at: aSymbol asSymbol
		ifAbsent: [ model perform: aSymbol ]
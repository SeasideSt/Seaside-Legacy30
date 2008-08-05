testing
hasAttributeNamed: aSymbol
	^ self allAttributes anySatisfy: [:ea | ea key = aSymbol]
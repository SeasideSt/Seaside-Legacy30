configuration
preferenceAt: aSymbol
	^ self application isNil ifFalse: [ self application preferenceAt: aSymbol ]
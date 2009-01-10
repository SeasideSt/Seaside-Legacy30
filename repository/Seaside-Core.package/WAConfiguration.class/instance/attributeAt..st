attributes
attributeAt: aSymbol
	^ self attributeAt: aSymbol ifAbsent: [ WAAttributeNotFound signalKey: aSymbol ]
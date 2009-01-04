attributes
attributeAt: aSymbol
	^ self attributeAt: aSymbol ifAbsent: [ (WAAttributeNotFound key: aSymbol) raiseSignal ]
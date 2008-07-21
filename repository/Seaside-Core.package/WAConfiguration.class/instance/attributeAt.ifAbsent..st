attributes
attributeAt: aSymbol ifAbsent: aBlock
	^ self allAttributesByKey at: aSymbol ifAbsent: aBlock
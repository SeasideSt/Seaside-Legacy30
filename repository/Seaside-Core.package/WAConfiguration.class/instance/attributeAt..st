attributes
attributeAt: aSymbol
	^ self attributeAt: aSymbol ifAbsent: [ self error: 'No attribute named ', aSymbol printString ]
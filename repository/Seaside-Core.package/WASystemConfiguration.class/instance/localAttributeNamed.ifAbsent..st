attributes
localAttributeNamed: aSymbol ifAbsent: absentBlock
	^ self attributesByKey at: aSymbol ifAbsent: absentBlock
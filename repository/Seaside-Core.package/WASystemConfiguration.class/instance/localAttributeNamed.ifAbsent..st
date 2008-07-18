values
localAttributeNamed: aSymbol ifAbsent: absentBlock
	^ self attributes detect: [:each | each key == aSymbol] ifNone: absentBlock
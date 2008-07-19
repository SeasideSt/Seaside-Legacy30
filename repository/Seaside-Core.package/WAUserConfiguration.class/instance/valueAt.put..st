accessing
valueAt: aSymbol put: anObject
	^ self takeValue: anObject forAttribute: (self attributeAt: aSymbol)
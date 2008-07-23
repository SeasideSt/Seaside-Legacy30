attributes
attributeNamed: aSymbol
	^ self allAttributes
		detect: [ :each | each key = aSymbol ]
		ifNone: [ self error: 'No attribute named ', aSymbol printString ]
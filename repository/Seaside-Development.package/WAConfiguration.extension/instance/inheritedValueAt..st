*seaside-development
inheritedValueAt: aSymbol 
	| context |
	context := WAAttributeSearchContext key: aSymbol target: self.

	context attribute isNil ifTrue: [ ^ nil ].
	
	^ self inheritedValueAt: aSymbol context: aSymbol
*seaside-development
inheritedValueAt: aSymbol 
	| context |
	context := WAAttributeContext key: aSymbol target: self.

	context attribute isNil ifTrue: [ ^ nil ].
	
	^ self inheritedValueAt: aSymbol context: aSymbol
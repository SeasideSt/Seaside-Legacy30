values
inheritedValueAt: aSymbol context: aContext
	| value |
	(self parents select: [ :each | aContext isAttributeInheritedBy: each ]) reverseDo:
		[ :each |
		value := each valueAt: aSymbol context: aContext.
		value notNil ifTrue: [ ^ value ] ].
	
	^ nil
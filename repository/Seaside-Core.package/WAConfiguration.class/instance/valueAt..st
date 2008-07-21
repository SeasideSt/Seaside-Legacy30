values
valueAt: aSymbol 
	^ self 
		localValueAt: aSymbol
		ifAbsent: [ self inheritedValueAt: aSymbol ]
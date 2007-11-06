values
valueAt: aSymbol
	^ self localValueAt: aSymbol ifAbsent: [self lookupValueAt: aSymbol]
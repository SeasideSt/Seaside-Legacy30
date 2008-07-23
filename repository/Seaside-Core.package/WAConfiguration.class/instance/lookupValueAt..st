values
lookupValueAt: aSymbol
	^ self inheritedValueAndSourceAt: aSymbol do: [:value :source | value]
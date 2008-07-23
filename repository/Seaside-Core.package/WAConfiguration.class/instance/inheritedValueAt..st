values
inheritedValueAt: aSymbol 
	^ self 
		inheritedValueAndSourceAt: aSymbol
		do: [ :value :source | value ]
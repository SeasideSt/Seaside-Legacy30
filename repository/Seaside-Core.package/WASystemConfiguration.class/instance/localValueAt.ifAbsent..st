values
localValueAt: aSymbol ifAbsent: absentBlock
	^ self overrides at: aSymbol ifAbsent: absentBlock.

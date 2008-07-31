values
localValueAt: aSymbol ifAbsent: absentBlock
	| valueDescriptor |
	valueDescriptor := self description values at: aSymbol ifAbsent: [ ^ absentBlock value ].

	^ valueDescriptor
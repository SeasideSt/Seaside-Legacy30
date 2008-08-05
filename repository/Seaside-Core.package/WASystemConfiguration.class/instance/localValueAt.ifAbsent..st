values
localValueAt: aSymbol ifAbsent: absentBlock
	^ (self respondsTo: aSymbol)
		ifTrue: [self perform: aSymbol]
		ifFalse: [absentBlock value]
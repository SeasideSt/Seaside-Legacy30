values
inheritedValueAndSourceAt: aSymbol do: aBlock
	self allAncestorsDo:
		[:ea |
		(ea localValueAt: aSymbol ifAbsent: [])
			ifNotNilDo: [:val | ^ aBlock value: val value: ea]].
	^ nil
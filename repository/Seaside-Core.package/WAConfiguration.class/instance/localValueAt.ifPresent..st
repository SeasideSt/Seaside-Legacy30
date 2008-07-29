values
localValueAt: aSymbol ifPresent: aBlock
	| value |
	value := self localValueAt: aSymbol ifAbsent: [ ^ nil ].
	^ aBlock value: value
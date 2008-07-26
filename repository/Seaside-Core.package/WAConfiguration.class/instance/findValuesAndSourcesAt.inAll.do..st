values
findValuesAndSourcesAt: aSymbol inAll: linear do: aBlock
	linear do: [ :each | each localValueAt: aSymbol ifPresent: [ :value |  aBlock value: value value: each ] ]
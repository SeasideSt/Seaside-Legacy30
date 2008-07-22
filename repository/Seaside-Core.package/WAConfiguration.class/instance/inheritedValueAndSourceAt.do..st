values
inheritedValueAndSourceAt: aSymbol do: aBlock
	| value |
	self allAncestorsDo: [ :each |
		value := each localValueAt: aSymbol ifAbsent: [ nil ].
		value isNil ifFalse: [ ^ aBlock value: value value: each ] ].
	^ nil
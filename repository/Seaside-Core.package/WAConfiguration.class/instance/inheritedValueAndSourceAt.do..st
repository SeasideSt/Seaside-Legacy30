values
inheritedValueAndSourceAt: aSymbol do: aBlock
	| value |
	self allAncestorsLinearized do: [ :each |
		value := each localValueAt: aSymbol ifAbsent: [ nil ].
		value isNil ifFalse: [ ^ aBlock value: value value: each ] ].
	^ nil
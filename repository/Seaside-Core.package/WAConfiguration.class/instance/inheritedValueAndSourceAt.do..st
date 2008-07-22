values
inheritedValueAndSourceAt: aSymbol do: aBlock
	| value ancestors attribute |
	ancestors := self allAncestorsLinearized.

	ancestors do: [ :each |
		value := each localValueAt: aSymbol ifAbsent: [ nil ].
		value isNil ifFalse: [ ^ aBlock value: value value: each ] ].
	
	(ancestors select: [ :each | each canDefineAttributes ]) do: [ :each |
		attribute := each localAttributeAt: aSymbol ifAbsent: [nil].
		attribute isNil ifFalse: [ ^ aBlock value: attribute default value: nil ] ].
	
	^ nil
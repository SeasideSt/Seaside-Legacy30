values
findValueAndSourceAt: aSymbol inAll: ancestry do: aBlock
	| value attribute |
	ancestry do: [ :each |
		value := each localValueAt: aSymbol ifAbsent: [ nil ].
		value isNil ifFalse: [ ^ aBlock value: value value: each ] ].
	
	(ancestry select: [ :each | each canDefineAttributes ]) do: [ :each |
		attribute := each localAttributeAt: aSymbol ifAbsent: [nil].
		attribute isNil ifFalse: [ ^ aBlock value: attribute default value: nil ] ].
	
	^ nil
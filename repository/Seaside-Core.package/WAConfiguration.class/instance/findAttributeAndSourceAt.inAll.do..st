attributes
findAttributeAndSourceAt: aSymbol inAll: linear do: aBlock
	(linear select: [ :each | each canDefineAttributes ]) do: [ :each |
		each localAttributeAt: aSymbol ifPresent: [ :attribute | ^ aBlock value: attribute value: each ] ].
	
	^ nil
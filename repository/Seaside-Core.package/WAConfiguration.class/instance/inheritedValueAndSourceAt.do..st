values
inheritedValueAndSourceAt: aSymbol do: aBlock
	| ancestors |
	ancestors := self allAncestorsLinearizedForAttributeAt: aSymbol.

	self findValuesAndSourcesAt: aSymbol inAll: ancestors do: [ :value :source | ^ aBlock value: value value: source ].
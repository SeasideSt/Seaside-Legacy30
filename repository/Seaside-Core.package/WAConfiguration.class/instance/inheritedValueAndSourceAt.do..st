values
inheritedValueAndSourceAt: aSymbol do: aBlock
	| ancestors |
	ancestors := self allAncestorsLinearizedForAttributeAt: aSymbol.

	^ self findValueAndSourceAt: aSymbol inAll: ancestors do: aBlock
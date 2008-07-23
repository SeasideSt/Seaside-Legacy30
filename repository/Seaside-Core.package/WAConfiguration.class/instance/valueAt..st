values
valueAt: aSymbol 
	| ancestry |
	ancestry := self ancestryLinearizedForAttributeAt: aSymbol.

	^ self findValueAndSourceAt: aSymbol inAll: ancestry do: [ :value :source | value ]
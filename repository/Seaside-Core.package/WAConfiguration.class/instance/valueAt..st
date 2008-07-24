values
valueAt: aSymbol 
	| ancestry |
	ancestry := self ancestryLinearizedForAttributeAt: aSymbol.

	self findValuesAndSourcesAt: aSymbol inAll: ancestry do: [ :value :source | ^ value ].
	
	self findAttributeAndSourceAt: aSymbol inAll: ancestry do: [ :attribute :source | ^ attribute default ].
	
	^ nil
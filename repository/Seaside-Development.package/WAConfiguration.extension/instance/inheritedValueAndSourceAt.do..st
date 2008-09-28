*seaside-development
inheritedValueAndSourceAt: aSymbol do: aBlock 
	| ancestors |
	ancestors := (self ancestryLinearizedForAttributeAt: aSymbol) allButFirst.
	self 
		findValuesAndSourcesAt: aSymbol
		inAll: ancestors
		do: 
			[ :value :source | 
			^ aBlock 
				value: value
				value: source ]
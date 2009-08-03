convenience
validateWith: aBlock
	^ self addDecoration: (WAValidationDecoration new validateWith: aBlock)
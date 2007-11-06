public
do: aBlock
	root add: (WAOpeningConditionalComment condition: condition).
	aBlock value.
	root add: (WAClosingConditionalComment new)
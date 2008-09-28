*seaside-development
findValuesAndSourcesAt: aSymbol inAll: linear do: aBlock
	linear do:
		[ :each |
		each expressionAt: aSymbol ifPresent:
			[ :expression | 
			aBlock value: expression value: each ] ]
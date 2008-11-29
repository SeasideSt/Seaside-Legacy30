*seaside-core
printStringAsCents
	^ '$' , (self // 100) seasideString , '.' , (self \\ 100) asTwoCharacterString
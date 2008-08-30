*Seaside-Core
printStringAsCents
	^ '$', (self // 100) toString, '.', (self \\ 100) asTwoCharacterString
*Seaside-Core
printStringAsCents
	^ '$', (self // 100) displayString, '.', (self \\ 100) asTwoCharacterString
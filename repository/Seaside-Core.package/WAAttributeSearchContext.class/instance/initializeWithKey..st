initialization
initializeWithKey: keySymbol
	key := keySymbol.
	attributeHolders := Set new.
	attributeInheritors := Set new.
	cachedValues := Dictionary new
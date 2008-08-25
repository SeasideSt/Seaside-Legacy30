initialization
initializeWithKey: keySymbol target: targetConfiguration
	key := keySymbol.
	target := targetConfiguration.
	ancestorsWithAttribute := IdentitySet new.
	cachedValues := IdentityDictionary new.
	
	self findAttributeAndSelectAncestorsOf: target.
	
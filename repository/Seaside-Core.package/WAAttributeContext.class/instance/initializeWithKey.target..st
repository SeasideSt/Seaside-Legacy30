initialization
initializeWithKey: keySymbol target: targetConfiguration
	target := targetConfiguration.
	ancestorsWithAttribute := OrderedCollection new.
	attribute := target addAncestorsTo: ancestorsWithAttribute forAttributeAt: keySymbol.
	cachedValues := IdentityDictionary new.
	
rendering
setSelector: selector toInstanceOf: aCachePluginClass
	| mutator |
	mutator := ('set', selector asMutator capitalized seasideString) asSymbol.
	self cache perform: mutator with: aCachePluginClass new
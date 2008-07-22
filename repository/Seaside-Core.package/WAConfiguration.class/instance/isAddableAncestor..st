ancestry
isAddableAncestor: aConfiguration
	^ (aConfiguration = self or: [aConfiguration inheritsFrom: self]) not
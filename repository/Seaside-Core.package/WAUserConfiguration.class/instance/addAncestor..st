ancestry
addAncestor: aConfiguration
	(self isAddableAncestor: aConfiguration)
		ifTrue: [ ancestors add: aConfiguration ]
		ifFalse: [ self error: 'Cannot add this configuration as an ancestor. Would this cause a circular ancestry graph?' ]
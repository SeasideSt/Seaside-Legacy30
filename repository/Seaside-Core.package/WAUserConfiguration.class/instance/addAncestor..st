ancestry
addAncestor: aConfiguration
	(self isAddableAncestor: aConfiguration)
		ifTrue: [ancestors add: aConfiguration]
ancestry
addAncestor: aConfiguration
	(self inheritsFrom: aConfiguration)
		ifFalse: [ancestors add: aConfiguration]
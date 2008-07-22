testing
inheritsFrom: aConfiguration
	^ self allAncestors anySatisfy: [:ea | ea = aConfiguration]
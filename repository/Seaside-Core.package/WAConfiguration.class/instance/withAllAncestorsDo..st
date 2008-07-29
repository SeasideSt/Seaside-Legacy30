ancestry
withAllAncestorsDo: aBlock
	aBlock value: self.
	^ self allAncestorsDo: aBlock
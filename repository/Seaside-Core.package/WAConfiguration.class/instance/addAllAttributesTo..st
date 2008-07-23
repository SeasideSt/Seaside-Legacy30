attributes-private
addAllAttributesTo: anAttributes
	anAttributes addAttributesFrom: self.
	self allAncestorsDo: [ :each | anAttributes addAttributesFrom: each ].
	 
	^ anAttributes all
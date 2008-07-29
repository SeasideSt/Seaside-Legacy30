attributes-private
addAllAttributesTo: anAttributes 
	anAttributes addAttributesFrom: self.
	self ancestorsDo: [ :each | anAttributes addAttributesFrom: each ].
	^ anAttributes all
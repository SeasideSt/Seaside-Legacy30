attributes
allAttributesByKey
	| attributes |
	attributes := WAAttributes keyed.
	self withAllAncestorsDo: [ :each | attributes addAttributesFrom: each ].
	 
	^ attributes all
		
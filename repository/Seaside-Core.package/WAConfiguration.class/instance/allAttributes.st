attributes
allAttributes
	| attributes |
	attributes := WAAttributes ordered.
	self withAllAncestorsDo: [ :each | attributes addAttributesFrom: each ].
	 
	^ attributes all
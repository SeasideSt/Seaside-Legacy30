attributes
attributesByKey
	| attributes |
	attributes := WAAttributes keyed.
	attributes addAttributesFrom: self.
	^ attributes all
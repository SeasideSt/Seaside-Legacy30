accessing
valueForAttribute: anAttribute consider: aSet cache: aDictionary
	(anAttribute key = self key) ifFalse: [ self error: 'Attribute mismatch' ].
	^ self value
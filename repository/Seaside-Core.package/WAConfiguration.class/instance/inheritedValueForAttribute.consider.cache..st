values
inheritedValueForAttribute: anAttribute consider: aSet cache: aDictionary
	| value |
	(self parents select: [ :each | aSet includes: each ]) reverseDo:
		[ :each |
		value := each valueForAttribute: anAttribute consider: aSet cache: aDictionary.
		value notNil ifTrue: [ ^ value ] ].
	
	^ nil
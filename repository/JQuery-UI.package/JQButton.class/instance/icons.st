accessing
icons
	icons isNil
		ifTrue: [ self icons: (icons := GRSmallDictionary new) ].
	^ icons
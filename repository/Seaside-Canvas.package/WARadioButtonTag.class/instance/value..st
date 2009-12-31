attributes
value: anObject
	(group notNil and: [ group hasCallback ])
		ifTrue: [ group hasSelection ifTrue: [ self selected: (group isSelected: anObject) ].
				super value: (group callbackValue: anObject) ]
		ifFalse: [ super value: anObject ]
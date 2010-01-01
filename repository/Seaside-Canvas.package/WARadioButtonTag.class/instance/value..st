attributes
value: anObject
	group notNil
		ifTrue: [ group hasSelection ifTrue: [ self selected: (group isSelected: anObject) ].
				group hasCallback ifTrue: [ super value: (group callbackValue: anObject) ] ]
		ifFalse: [ super value: anObject ]
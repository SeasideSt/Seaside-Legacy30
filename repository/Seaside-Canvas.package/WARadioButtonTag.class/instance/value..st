attributes
value: anObject
	(group notNil and: [ group hasCallback ])
		ifTrue: [ super value: (group callbackValue: anObject) ]
		ifFalse: [ super value: anObject ]
converting
valueFromString: aString
	^ aString = 'true'
		ifTrue: [true]
		ifFalse: [aString = 'false'
				 ifTrue: [false]
				 ifFalse: [self error: 'Invalid value for boolean attribute']]
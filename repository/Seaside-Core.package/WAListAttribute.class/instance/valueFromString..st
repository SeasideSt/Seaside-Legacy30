converting
valueFromString: aString
	^ self options
		detect: [ :each | each displayString = aString ]
		ifNone: [ self error: 'No matching list option' ]
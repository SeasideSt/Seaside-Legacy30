converting
valueFromString: aString
	^ self options
		detect: [:ea | ea displayString = aString]
		ifNone: [self error: 'No matching list option']
converting
valueFromString: aString
	^ self options
		detect: [ :each | each toString = aString]
		ifNone: [ self error: 'No matching list option' ]
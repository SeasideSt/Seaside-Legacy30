converting
valueFromString: aString 
	^ self options 
		detect: [ :each | each seasideString = aString ]
		ifNone: [ self error: 'No matching list option' ]
accessing-headers
headerAt: aString
	^self headers
		detect: [ :each | each key = aString ]
		ifNone: [ nil ]
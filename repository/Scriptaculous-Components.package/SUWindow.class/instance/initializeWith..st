initialization
initializeWith: aString
	arguments := aString subStrings: (Array with: $,).
	arguments size > 1
		ifTrue: [self origin: (Point x: (arguments at: 1) asNumber y: (arguments at: 2) asNumber + 16)].
	^arguments
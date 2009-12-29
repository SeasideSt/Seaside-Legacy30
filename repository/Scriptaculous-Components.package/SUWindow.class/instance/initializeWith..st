initialization
initializeWith: aString
	arguments := aString findTokens: $,.
	arguments size > 1
		ifTrue: [self origin: (Point x: (arguments at: 1) asNumber y: (arguments at: 2) asNumber + 16)].
	^arguments
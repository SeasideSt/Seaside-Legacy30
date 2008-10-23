public
setOriginWith: aString
	| anArray |
	anArray := aString subStrings: (Array with: $,).
	anArray size > 1
		ifTrue: [self origin: (Point x: (anArray at: 1) asNumber y: (anArray at: 2) asNumber + 20)].
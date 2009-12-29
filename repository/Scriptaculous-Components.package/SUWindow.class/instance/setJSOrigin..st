public
setJSOrigin: aString
	| stringArray | 
	stringArray := aString subStrings: ','.
	stringArray size > 1
		ifTrue: [self origin: (Point x: (stringArray at: 1) asNumber y: (stringArray at: 2) asNumber + 16)]
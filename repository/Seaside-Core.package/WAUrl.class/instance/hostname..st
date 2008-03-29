accessing
hostname: aString
	hostname := aString isNil
		ifFalse: [ aString asLowercase ]
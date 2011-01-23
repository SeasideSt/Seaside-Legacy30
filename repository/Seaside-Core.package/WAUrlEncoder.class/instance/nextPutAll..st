accessing
nextPutAll: aString
	| encoded |
	encoded := codec url encode: aString.
	(GRPlatform current includesUnsafeUrlCharacter: encoded)
		ifTrue: [ super nextPutAll: encoded ]
		ifFalse: [ stream nextPutAll: encoded ]
accessing
nextPutAll: aString
	(GRPlatform current includesUnsafeXmlCharacter: aString)
		ifTrue: [ super nextPutAll: aString ]
		ifFalse: [ stream nextPutAll: aString ]
media
addMedia: aString
	| media |
	media :=	(((attributes at: 'media' ifAbsent: [ '' ])
		findTokens: $,)
			collect: [ :each | each trimBlanks ])
				asSet.

	media add: aString.

	self media: (String streamContents: [ :stream |
		media
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream nextPutAll: ', ' ] ])
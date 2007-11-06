private
encode: aCharacter on: aStream
	| value |
	('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~' includes: aCharacter)
		ifTrue: [ ^ aStream nextPut: aCharacter ].
	aCharacter = Character space
		ifTrue: [ ^ aStream nextPut: $+ ].
	value := aCharacter asInteger.
	[ aStream nextPut: $%; nextPutAll: (((value \\ 256) printStringBase: 16) padded: #left to: 2 with: $0).
	  value := value // 256.
	  value = 0 ] whileFalse
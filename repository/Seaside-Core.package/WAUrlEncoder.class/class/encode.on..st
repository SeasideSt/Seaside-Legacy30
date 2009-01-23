private
encode: aCharacter on: aStream
	| value |
	('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~' includes: aCharacter)
		ifTrue: [ ^ aStream nextPut: aCharacter ].
	value := aCharacter asInteger.
	aStream nextPut: $%.
	aStream nextPutAll: ((value printStringBase: 16) padded: #left to: 2 with: $0)
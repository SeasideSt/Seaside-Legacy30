string-encoding
encode: aString to: aStream
	| char value encoded |
	aStream nextPut: $'.
	1 to: aString size do: [ :index |
		char := aString at: index.
		value := char asInteger.
		value < JavascriptCharacters size
			ifFalse: [
				aStream nextPutAll: '\u'; nextPutAll: ((char asUnicode
					printStringBase: 16) padded: #left to: 4 with: $0) ]
			ifTrue: [
				encoded := JavascriptCharacters at: value + 1.
				encoded isString
					ifTrue: [ aStream nextPutAll: encoded ]
					ifFalse: [ aStream nextPut: encoded ] ] ].
	aStream nextPut: $'
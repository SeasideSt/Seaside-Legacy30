encoding
encodeString: aString on: aStream 
	"Strings have a complicated encoding in Javascript, try to optimize their serialization."
	
	| char value encoded |
	aStream nextPut: $".
	1 to: aString size do: [ :index | 
		char := aString at: index.
		value := char greaseInteger.
		value < JavascriptCharacters size 
			ifFalse: [ aStream nextPut: char ]
			ifTrue: [
				encoded := JavascriptCharacters at: value + 1.
				encoded isString 
					ifTrue: [ aStream nextPutAll: encoded ]
					ifFalse: [ aStream nextPut: encoded ] ] ].
	aStream nextPut: $"
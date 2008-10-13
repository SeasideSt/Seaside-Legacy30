encoding
encodeDictionary: aDictionary to: aStream 
	"Dictionary or hash-maps common structures in JavaScript, try to optimize their serialization."
	
	| first |
	first := true.
	aStream nextPut: ${.
	aDictionary keysAndValuesDo: [ :key :value |
		first
			ifTrue: [ first := false ]
			ifFalse: [ aStream nextPut: $, ].
		self encodeKey: key value: value to: aStream ].
	aStream nextPut: $}
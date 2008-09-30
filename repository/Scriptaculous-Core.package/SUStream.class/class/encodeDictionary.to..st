string-encoding
encodeDictionary: aDictionary to: aStream 
	"Dictionary or hash-maps are sort of very common structures in JavaScript, try to optimize their serialization."
	
	| first |
	first := true.
	aStream nextPut: ${.
	aDictionary keysAndValuesDo: [ :key :value | 
		first 
			ifTrue: [ first := false ]
			ifFalse: [ aStream nextPut: $, ].
		(key isString and: [ key isEmpty not and: [ key first isLetter and: [ key allSatisfy: [ :each | each isAlphaNumeric ] ] ] ]) 
			ifTrue: [ aStream nextPutAll: key ]
			ifFalse: [ self encode: key seasideString to: aStream ].
		aStream nextPut: $:; javascript: value ].
	aStream nextPut: $}
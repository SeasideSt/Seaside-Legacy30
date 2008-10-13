encoding
encodeKey: aKey value: aValue to: aStream 
	"Key-value pairs are common structures in JavaScript, try to optimize their serialization."
	
	(aKey isString and: [ aKey isEmpty not and: [ aKey first isLetter and: [ aKey allSatisfy: [ :each | each isAlphaNumeric ] ] ] ]) 
		ifTrue: [ aStream nextPutAll: aKey ]
		ifFalse: [ self encodeString: aKey seasideString to: aStream ].
	aStream nextPut: $:; javascript: aValue
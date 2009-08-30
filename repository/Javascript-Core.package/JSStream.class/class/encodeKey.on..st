encoding
encodeKey: aKey on: aStream
	"Encode the key of a Key-value pair for JavaScript, try to optimize their serialization."
	
	(aKey isString and: [ aKey isEmpty not and: [ aKey first isLetter and: [ aKey allSatisfy: [ :each | each isAlphaNumeric ] ] ] ]) 
		ifTrue: [ aStream nextPutAll: aKey ]
		ifFalse: [ self encodeString: aKey seasideString on: aStream ]
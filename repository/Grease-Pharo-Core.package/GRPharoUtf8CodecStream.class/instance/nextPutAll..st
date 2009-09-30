streaming
nextPutAll: aString
	binary
		ifTrue: [ stream nextPutAll: aString asString ]
		ifFalse: [
			aString isByteString
				ifTrue: [ self encodeFast: aString ]
				ifFalse: [ self encodeDefault: aString ] ]
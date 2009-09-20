encoding
encodeParametersOn: aDocument
	| first |
	first := true.
	parameters ifNil: [ ^ self ].
	parameters keysAndValuesDo: [ :key :value | 
		aDocument htmlEncoder nextPut:
			(first 
				ifTrue: [ first := false. $? ]
				ifFalse: [ $& ]).
		aDocument urlEncoder nextPutAll: key.
		value isNil ifFalse: [
			aDocument nextPut: $=.
			aDocument urlEncoder nextPutAll: value seasideString ] ]
encoding
encodeParametersOn: aDocument usingHtmlEntities: aBoolean
	| first |
	first := true.
	parameters ifNil: [ ^ self ].
	parameters keysAndValuesDo: [ :key :value |
		aDocument nextPutAll: (first
			ifTrue: [ first := false. '?' ]
			ifFalse: [
				aBoolean
					ifTrue: [ '&amp;' ]
					ifFalse: [ '&' ] ]).
		aDocument urlEncoder nextPutAll: key.
		value ifNotNil: [
			aDocument nextPut: $=.
			aDocument urlEncoder nextPutAll: value asString ] ]
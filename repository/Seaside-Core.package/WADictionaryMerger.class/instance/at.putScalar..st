private
at: aKey putScalar: anObject
	^(dictionary includesKey: aKey)
		ifTrue: [
			| value |
			value := dictionary at: aKey.
			(value isKindOf: self collectionClass)
				ifTrue: [ value add: anObject ]
				ifFalse: [
					dictionary
						at: aKey
						put: (self collectionClass with: value with: anObject) ] ]
		ifFalse: [ dictionary at: aKey put: anObject ]
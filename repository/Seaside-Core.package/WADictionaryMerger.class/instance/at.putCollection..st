private
at: aKey putCollection: aCollection
	(dictionary includesKey: aKey)
		ifTrue: [
			| value |
			value := dictionary at: aKey.
			(value isKindOf: self collectionClass)
				ifTrue: [ value addAll: aCollection ]
				ifFalse: [
					dictionary
						at: aKey
						put: ((self collectionClass with: value), aCollection) ] ]
		ifFalse: [ dictionary at: aKey put: aCollection ]
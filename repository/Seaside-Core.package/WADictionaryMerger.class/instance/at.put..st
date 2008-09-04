accessing
at: aKey put: aValue
	^(aValue isKindOf: self collectionClass)
		ifTrue: [ 
			aValue size = 1
				ifTrue: [ self at: aKey putScalar: aValue first ]
				ifFalse: [ self at: aKey putCollection: aValue ] ]
		ifFalse: [ self at: aKey putScalar: aValue ]
comparing
= aDictionary
	"Two dictionaries are equal if
	 (a) they are the same 'kind' of thing.
	 (b) they have the same set of keys.
	 (c) for each (common) key, they have the same value"

	self == aDictionary ifTrue: [ ^ true ].
	self class = aDictionary class ifFalse: [ ^ false ].
	self size = aDictionary size ifFalse: [ ^ false ] .
	self keysAndValuesDo: [ :key :value |
		(aDictionary at: key ifAbsent: [ ^ false ]) = value
			ifFalse: [ ^ false] ].
	^true
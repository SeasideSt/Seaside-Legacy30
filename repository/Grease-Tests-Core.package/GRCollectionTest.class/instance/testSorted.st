tests
testSorted
	| sorted collection |
	collection := self arbitraryCollection.
	sorted := collection sorted.
	self isSequencedReadable
		ifTrue: [ self assert: (sorted isKindOf: self collectionSpecies) ]
		ifFalse: [ self assert: (sorted isKindOf: Array) ].
	self assert: sorted sortedWith: [ :a :b | a <= b ].
	
	sorted := collection sorted: [ :a :b | a > b ].
	self isSequencedReadable
		ifTrue: [ self assert: (sorted isKindOf: self collectionSpecies) ]
		ifFalse: [ self assert: (sorted isKindOf: Array) ].
	self assert: sorted sortedWith: [ :a :b | a > b ].
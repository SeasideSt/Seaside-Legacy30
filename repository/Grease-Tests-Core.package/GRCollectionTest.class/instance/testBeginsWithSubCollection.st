testing
testBeginsWithSubCollection
	| collection |
	self isSequencedReadable ifFalse: [ ^ self ].
	collection := self arbitraryCollection.
	self assert: (collection beginsWithSubCollection: (collection copyWithout: collection last)).
	self assert: (collection beginsWithSubCollection: collection).
	self deny: (collection beginsWithSubCollection: (collection copyWith: collection first)).
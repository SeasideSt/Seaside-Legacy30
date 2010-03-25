testing
endsWithSubCollection
	| nonEmpty |
	nonEmpty := OrderedCollection with: #x with: 1 with: 1.
	self assert: (nonEmpty endsWithSubCollection: (nonEmpty copyWithout: nonEmpty first)).
	self assert: (nonEmpty endsWithSubCollection: nonEmpty).
	self deny: (nonEmpty endsWithSubCollection:(nonEmpty copyWith: nonEmpty first)).
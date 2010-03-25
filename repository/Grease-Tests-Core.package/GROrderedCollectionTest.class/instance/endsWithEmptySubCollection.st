testing
endsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := OrderedCollection with: #x with: 1 with: 1.
	self deny: (nonEmpty endsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection endsWithSubCollection: nonEmpty).

testing
beginsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := OrderedCollection with: #x with: 1 with: 1.
	self deny: (nonEmpty beginsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection beginsWithSubCollection: nonEmpty).

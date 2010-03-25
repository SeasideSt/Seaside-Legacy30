tests
beginsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := #'abcd'.
	self deny: (nonEmpty beginsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection beginsWithSubCollection: nonEmpty).

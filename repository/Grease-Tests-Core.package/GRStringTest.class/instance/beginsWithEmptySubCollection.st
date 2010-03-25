tests
beginsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := 'I am not empty'
	self deny: (nonEmpty beginsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection beginsWithSubCollection: nonEmpty).
	
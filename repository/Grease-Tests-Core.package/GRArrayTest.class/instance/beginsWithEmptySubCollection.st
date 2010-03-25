testing
beginsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := #(1 2 3 4 5).	
	self deny: (nonEmpty beginsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection beginsWithSubCollection: nonEmpty).
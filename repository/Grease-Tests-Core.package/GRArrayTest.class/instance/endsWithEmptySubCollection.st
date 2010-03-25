testing
endsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := #(1 2 3 4 5).	
	self deny: (nonEmpty endsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection endsWithSubCollection: nonEmpty).
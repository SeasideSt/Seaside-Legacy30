testing
beginsWithEmptySubCollection	
	| nonEmpty |
	nonEmpty := (-5 to: 10 by: 3).	
	self deny: (nonEmpty beginsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection beginsWithSubCollection: nonEmpty).
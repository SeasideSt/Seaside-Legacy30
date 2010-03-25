testing
endsWithEmptySubCollection	
	| nonEmpty |
	nonEmpty := (-5 to: 10 by: 3).	
	self deny: (nonEmpty endsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection endsWithSubCollection: nonEmpty).
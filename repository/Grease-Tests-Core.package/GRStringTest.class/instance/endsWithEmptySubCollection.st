tests
endsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := 'I am not empty'
	self deny: (nonEmpty endsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection endsWithSubCollection: nonEmpty).
	
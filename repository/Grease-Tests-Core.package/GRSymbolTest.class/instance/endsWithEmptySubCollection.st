tests
endsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := 'abcd'
	self deny: (nonEmpty endsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection endsWithSubCollection: nonEmpty).
	
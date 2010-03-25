testing
endsWithEmptySubCollection
	| nonEmpty |
	nonEmpty := SortedCollection new
		add: 2;
		add: 12332312321;
		add: 12332312321;
		yourself.
	self deny: (nonEmpty endsWithSubCollection: self emptyCollection).
	self deny: (self emptyCollection endsWithSubCollection: nonEmpty).
	
testing
endsWithSubCollection
	| nonEmpty |
	nonEmpty := SortedCollection new
		add: 2;
		add: 12332312321;
		add: 12332312321;
		yourself.
	self assert: (nonEmpty endsWithSubCollection: (nonEmpty copyWithout: nonEmpty first)).
	self assert: (nonEmpty endsWithSubCollection: nonEmpty).
	self deny: (nonEmpty endsWithSubCollection: (nonEmpty copyWith: nonEmpty first)).
testing
beginsWithSubCollection
	| nonEmpty |
	nonEmpty := SortedCollection new
		add: 2;
		add: 12332312321;
		add: 12332312321;
		yourself.
	self assert: (nonEmpty beginsWithSubCollection: (nonEmpty copyWithout: nonEmpty last)).
	self assert: (nonEmpty beginsWithSubCollection: nonEmpty).
	self deny: (nonEmpty beginsWithSubCollection: (nonEmpty copyWith: nonEmpty first)).
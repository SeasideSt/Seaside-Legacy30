testing
beginsWithSubCollection 
	| nonEmpty |
	nonEmpty := #(1 2 3 4 5). 
	self assert: (nonEmpty beginsWithSubCollection: (nonEmpty copyWithout: nonEmpty first)).
	self assert: (nonEmpty beginsWithSubCollection: nonEmpty).
	self deny: (nonEmpty beginsWithSubCollection: (nonEmpty copyWith: nonEmpty first)).
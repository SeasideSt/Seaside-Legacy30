tests
beginsWithSubCollection
	| nonEmpty |
	nonEmpty := 'I am not empty'.
	self assert: (nonEmpty beginsWithSubCollection: (nonEmpty copyWithout: nonEmpty last)).
	self assert: (nonEmpty beginsWithSubCollection: nonEmpty).
	self deny: (nonEmpty beginsWithSubCollection: (nonEmpty copyWith: nonEmpty first)).
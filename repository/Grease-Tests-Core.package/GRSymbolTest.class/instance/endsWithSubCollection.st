tests
endsWithSubCollection
	| nonEmpty |
	nonEmpty := #'abcd'.
	self assert: (nonEmpty endsWithSubCollection: (nonEmpty copyWithout: nonEmpty last)).
	self assert: (nonEmpty endsWithSubCollection: nonEmpty).
	self deny: (nonEmpty endsWithSubCollection: (nonEmpty copyWith: nonEmpty first)).
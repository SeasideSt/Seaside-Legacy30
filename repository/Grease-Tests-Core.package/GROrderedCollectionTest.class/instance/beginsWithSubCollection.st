testing
beginsWithSubCollection
	| nonEmpty |
	nonEmpty := OrderedCollection with: #x with: 1 with: 1.
	self assert: (nonEmpty beginsWithSubCollection: (nonEmpty copyWithout: nonEmpty last)).
	self assert: (nonEmpty beginsWithSubCollection: nonEmpty).
	self deny: (nonEmpty beginsWithSubCollection:(nonEmpty copyWith: nonEmpty last)).